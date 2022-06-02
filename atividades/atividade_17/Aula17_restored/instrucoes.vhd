library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity instrucoes is
  -- O generic é onde carrega as constantes padroes
  generic
  (
		larguraDados     : natural  :=    32;
		larguraEnd       : natural  :=    5;
		larguraFunct     : natural  :=    6;
		larguraShamt     : natural  :=    5;
		larguraOpcode    : natural  :=    6;
		larguraImediato  : natural  :=    26;
		larguraControle  : natural  :=    14;
		simulacao        : boolean  :=   FALSE	 -- para gravar na placa, altere de TRUE para FALSE
  );
  
  -- O port é obrigatório e possui o objeto “signal” implícito.
  port    
  (	
		-- simulacao
        CLOCK_50      				 : in std_logic;
		KEY           				 : in std_logic_vector(3 downto 0);
		LEDR           : out std_logic_vector(9 downto 0)
  );
end entity;   -- Também pode ser utilizado: "end entity";

architecture arquitetura of instrucoes is 

                                   
		signal CLK, clk_TCL, reset            : std_logic;
		
		
		-- PC
		signal saidaPC                : std_logic_vector (larguraDados-1 downto 0); -- endereco instrucao da ROM
		signal saidaIncPC             : std_logic_vector (larguraDados-1 downto 0); -- saida do PC+4
		
		-- ROM
		signal saidaROM               : std_logic_vector (larguraDados-1 downto 0); -- instrucao da ROM
		alias opcode                  : std_logic_vector (larguraOpcode-1 downto 0) is saidaROM(31 downto 26);
		alias endRs                 	: std_logic_vector (larguraEnd-1 downto 0) is saidaROM(25 downto 21);
		alias endRt                 	: std_logic_vector (larguraEnd-1 downto 0) is saidaROM(20 downto 16);
		alias endRd                 	: std_logic_vector (larguraEnd-1 downto 0) is saidaROM(15 downto 11);
		alias funct                   : std_logic_vector (larguraFunct-1 downto 0) is saidaROM(5 downto 0);
		
		-- BANCO REG
		-- Dados lidos do Banco Reg
		signal saidaRs                : std_logic_vector (larguraDados-1 downto 0);
		signal saidaRt                : std_logic_vector (larguraDados-1 downto 0);
		
		-- PONTOS DE CONTROLE
		signal controle                : std_logic_vector (larguraControle-1 downto 0);
		alias WR                       : std_logic is controle(0);
		alias RD                       : std_logic is controle(1);
		alias BNE                      : std_logic is controle(2);
		alias BEQ                      : std_logic is controle(3);
		alias habMuxULAMem             : std_logic_vector(1 downto 0) is controle(5 downto 4);
		alias tipoR                    : std_logic is controle(6);
		alias habMuxRtImediato         : std_logic is controle(7);
		alias habBancoReg              : std_logic is controle(8);
		alias ORIANDI                  : std_logic is controle(9);
		alias habMuxRtRd               : std_logic_vector(1 downto 0) is controle(11 downto 10);
		alias habMuxPCBEQ              : std_logic is controle(12);
		alias JR                       : std_logic is controle(13);


		-- Unidade de controle ULA
		signal ULActrl                 : std_logic_vector (3 downto 0);

		-- ULA
		signal saidaOpULA              : std_logic_vector(larguraDados-1 downto 0);
		signal saidaZeroULA            : std_logic;

		-- MUX ULA MEM
		signal saidaMuxULAMem          : std_logic_vector(larguraDados-1 downto 0);
		
		-- MUX RT IMEDIATO
		signal saidaMuxRtImediato      : std_logic_vector(larguraDados-1 downto 0);

		-- MUX RT RD
		signal saidaMuxRtRd            : std_logic_vector(larguraEnd-1 downto 0);

		-- MUX PC
		signal saidaMuxPC              : std_logic_vector(larguraDados-1 downto 0);

		-- MUX BEQ
		signal saidaMuxBEQ             : std_logic_vector(larguraDados-1 downto 0);

		-- MUX PC BEQ
		signal saidaMuxPCBEQ           : std_logic_vector(larguraDados-1 downto 0);

		-- MUX ZERO ULA
		signal saidaMuxZeroULA         : std_logic_vector(1 downto 0);

		-- ESTENDE SINAL
		signal sinalEstendido          : std_logic_vector(larguraDados-1 downto 0);
		signal sinalEstendidoShiftado  : std_logic_vector(larguraDados-1 downto 0);
		signal sinalEstendidoLUI       : std_logic_vector(larguraDados-1 downto 0);

		-- LUI
		signal saidaLUI                : std_logic_vector(larguraDados-1 downto 0);

		-- RAM
		signal dadoLidoRAM             : std_logic_vector(larguraDados-1 downto 0);

		-- SOMADOR
		signal saidaSomador            : std_logic_vector(larguraDados-1 downto 0);

		-- SHIFT
		signal saidaShiftPC            : std_logic_vector(larguraImediato-1 downto 0);
		
begin

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0) or clk_TCL), saida => clk);

end generate;

LEDR(3 downto 0) <= ULActrl;
LEDR(9 downto 4) <= (others => '0');

detectorSub1: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(3)), saida => reset);

monitor: work.debugMonitor
			port map(PC => saidaPC,
						Instrucao => saidaROM,
						LeituraRS => saidaRs,
						LeituraRT => saidaRt,
						EscritaRD => saidaMuxULAMem,
						EntradaB_ULA => saidaMuxRtImediato,
						imediatoEstendido => sinalEstendido,
						saidaULA => saidaOpULA,
						dadoLido_RAM => dadoLidoRAM,
						proxPC => saidaMuxBEQ,
						MUXProxPCEntradaA => saidaMuxBEQ,
						MUXProxPCEntradaB => saidaIncPC(31 downto 28) & saidaShiftPC & "00",
						
						ULActrl => ULActrl,
						zeroFLAG => saidaZeroULA,
						escreveC => habBancoReg,
						MUXPCBEQJUMP => habMuxPC,
						MUXRTRD => habMuxRtRd,
						MUXRTIMED => habMuxRtImediato,
						MUXULAMEM => habMuxULAMem,
						iBEQ => BEQ,
						WR => WR,
    					RD => RD,
						--Output
  					   clkTCL => clk_TCL);

-- Instanciando os componentes:


ULAMIPS : entity work.ULA_MIPS_32  generic map(larguraDados => larguraDados)
            port map (  entradaA  => saidaRs, 
						entradaB  => saidaMuxRtImediato,
					    ULActrl   => ULActrl,
						Zero     => saidaZeroULA,
						saidaULA => saidaOpULA);
						
CONTROLE_ULA : entity work.UnidadeDeControleULA
            port map (  opcode   => opcode,
						funct    => funct,
						tipoR    => tipoR,
						ULActrl  => ULActrl);

CONTROLE_FD : entity work.UnidadeDeControle generic map (larguraOpcode => larguraOpcode, larguraControle => larguraControle)
            port map (  entrada   => opcode,
						saida     => controle);

PC     : entity work.registradorGenerico  generic map (larguraDados => larguraDados)
             port map (	DIN     => saidaMuxPC, 
						DOUT    => saidaPC, 
				   		ENABLE  => '1', 
				   		CLK     => CLK, 
				   		RST     => reset);	

PC_INC :  entity work.somaUm  generic map (larguraDados => larguraDados , constante => 4)
            port map(   entrada   => saidaPC, 
					    saida     => saidaIncPC);			
              
BANCO_REG : entity work.bancoReg   generic map (larguraDados => larguraDados, larguraEndBancoRegs => larguraEnd)
          port map (  	clk => CLK,
                      	enderecoA => endRs,
                      	enderecoB => endRt,
                      	enderecoC => saidaMuxRtRd,
                      	dadoEscritaC => saidaMuxULAMem,
                      	escreveC => habBancoReg,
                      	saidaA => saidaRs,
                      	saidaB  => saidaRt);

ROM_MIPS : entity work.ROMMIPS   generic map (dataWidth => larguraDados, addrWidth => larguraDados)
          port map ( 	clk => CLK,
						Endereco => saidaPC, 
						Dado => saidaROM);
							
MUX_ULA_MEM :  entity work.muxGenerico4x1  generic map (larguraDados => larguraDados)
          port map( 	entrada0_MUX => saidaOpULA,
                 		entrada1_MUX => dadoLidoRAM,
						entrada2_MUX => saidaIncPC,
                 		entrada3_MUX => estendeSinalLUI,
                 		seletor_MUX  => habMuxULAMem,
                 		saida_MUX    => saidaMuxULAMem);

MUX_RT_IMEDIATO :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
          port map( 	entradaA_MUX => saidaRt,
                 		entradaB_MUX =>  sinalEstendido,
                 		seletor_MUX => habMuxRtImediato,
                 		saida_MUX => saidaMuxRtImediato);

MUX_BEQ :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
          port map( 	entradaA_MUX => saidaIncPC,
                 		entradaB_MUX =>  saidaSomador,
                 		seletor_MUX => saidaMuxZeroULA and (BEQ or BNE),
                 		saida_MUX => saidaMuxBEQ);

MUX_RT_RD :  entity work.muxGenerico4x1  generic map (larguraDados => 5)
          port map( 	entrada0_MUX => endRt,
		  				entrada1_MUX =>  endRd,
						entrada2_MUX => "11111",
						entrada3_MUX => '0',
                 		seletor_MUX => habMuxRtRd,
                 		saida_MUX => saidaMuxRtRd);

MUX_ZERO_ULA :  entity work.muxGenerico2x1  generic map (larguraDados => 1)
          port map( 	entradaA_MUX => not saidaZeroULA,
                 		entradaB_MUX =>  saidaZeroULA,
                 		seletor_MUX => BEQ,
                 		saida_MUX => saidaMuxZeroULA);

MUX_PC :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
          port map( 	entradaA_MUX => saidaMuxBEQ,
                 		entradaB_MUX =>  saidaIncPC(31 downto 28) & saidaShiftPC & "00",
                 		seletor_MUX => habMuxPC,
                 		saida_MUX => saidaMuxPC);

ESTENDE : entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => larguraDados)
          port map (	estendeSinal_IN  => saidaROM(15 downto 0), 
		  				selOriAndi       => ORIANDI,
		  				estendeSinal_OUT => sinalEstendido);

ESTENDE_LUI : entity work.LUI    generic map (larguraDadoEntrada => 16, larguraDadoSaida => larguraDados)
		  port map (	estendeSinal_IN  => saidaROM(15 downto 0), 
						estendeSinal_OUT => sinalEstendidoLUI);

SOMADOR :  entity work.somadorGenerico  generic map (larguraDados => larguraDados)
          port map(  	entradaA => saidaIncPC, 
					    entradaB =>  sinalEstendidoShiftado, 
						saida => saidaSomador);

RAM_MIPS : entity work.RAMMIPS   generic map (dataWidth => larguraDados, addrWidth => larguraDados)
          port map (	Endereco => saidaOpULA, 
		  				we => WR,  
						Dado_in => saidaRt, 
						Dado_out => dadoLidoRAM, 
						clk => CLK);

-- shift sinal imediato extentido 
SHIFT_IMEDIATO_EXT : entity work.shift2   generic map (dataWidth => larguraDados)
port map (	entrada => sinalEstendido, 
				saida => sinalEstendidoShiftado
		);


-- shift sinal imediato
SHIFT_IMEDIATO : entity work.shift2   generic map (dataWidth => larguraImediato)
port map (	entrada => saidaROM(25 downto 0), 
				saida => saidaShiftPC
		);		 




end architecture;