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
		larguraControle  : natural  :=    14
  );
  
  -- O port é obrigatório e possui o objeto “signal” implícito.
  port    
  (	
		-- simulacao
        CLOCK_50      				         : in std_logic;
		KEY           			           	 : in std_logic_vector(3 downto 0);
		SW									 : in std_logic_vector(9 downto 0);
		LEDR                                 : out std_logic_vector(9 downto 0);
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5   : out std_logic_vector(6 downto 0)
  );
end entity;   -- Também pode ser utilizado: "end entity";

architecture arquitetura of instrucoes is 

                                   
		signal CLK, reset            : std_logic;
		
		
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
		signal saidaMuxZeroULA         : std_logic;

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

		-- DISPLAY
		signal entradaDisplay          : std_logic_vector(larguraDados-1 downto 0);
		
begin

detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => clk);


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
						MUXPCBEQJUMP => habMuxPCBEQ,
						MUXRTRD => habMuxRtRd,
						MUXRTIMED => habMuxRtImediato,
						MUXULAMEM => habMuxULAMem,
						iBEQ => BEQ,
						WR => WR,
    					RD => RD);


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

CONTROLE_FD : entity work.UnidadeDeControleFD generic map (larguraOpcode => larguraOpcode, larguraControle => larguraControle)
            port map (  opcode   => opcode,
								funct		=> funct,
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
                 		entrada3_MUX => sinalEstendidoLUI,
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
						entrada3_MUX => "00000",
                 		seletor_MUX => habMuxRtRd,
                 		saida_MUX => saidaMuxRtRd);

MUX_ZERO_ULA :  entity work.muxGenericoULA2x1
          port map( 	entrada0_MUX => not saidaZeroULA,
                 		entrada1_MUX =>  saidaZeroULA,
                 		seletor_MUX => BEQ,
                 		saida_MUX => saidaMuxZeroULA);

MUX_PCBEQ :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
          port map( 	entradaA_MUX => saidaMuxBEQ,
                 		entradaB_MUX =>  saidaIncPC(31 downto 28) & saidaShiftPC & "00",
                 		seletor_MUX => habMuxPCBEQ,
                 		saida_MUX => saidaMuxPCBEQ);

MUX_PC :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
          port map( 	entradaA_MUX => saidaMuxPCBEQ,
                 		entradaB_MUX =>  saidaRs,
                 		seletor_MUX => JR,
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
					
MUX_DISPLAY :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
          port map( 	entradaA_MUX => saidaPC,
                 		entradaB_MUX =>  saidaOpULA,
                 		seletor_MUX => SW(0),
                 		saida_MUX => entradaDisplay);

DECODER_HEX0:  
	entity work.conversorHex7Seg
   port map(
		dadoHex		=> entradaDisplay(3 downto 0),
		apaga			=> '0',
		negativo 	=> '0',
		overFlow 	=> '0',
		saida7seg	=> HEX0
	);

DECODER_HEX1:  
	entity work.conversorHex7Seg
   port map(
		dadoHex		=> entradaDisplay(7 downto 4),
		apaga			=> '0',
		negativo 	=> '0',
		overFlow 	=> '0',
		saida7seg	=> HEX1
	);
	
DECODER_HEX2:  
	entity work.conversorHex7Seg
   port map(
		dadoHex		=> entradaDisplay(11 downto 8),
		apaga			=> '0',
		negativo 	=> '0',
		overFlow 	=> '0',
		saida7seg	=> HEX2
	);
	
DECODER_HEX3:  
	entity work.conversorHex7Seg
   port map(
		dadoHex		=> entradaDisplay(15 downto 12),
		apaga			=> '0',
		negativo 	=> '0',
		overFlow 	=> '0',
		saida7seg	=> HEX3
	);

DECODER_HEX4:  
	entity work.conversorHex7Seg
   port map(
		dadoHex		=> entradaDisplay(19 downto 16),
		apaga			=> '0',
		negativo 	=> '0',
		overFlow 	=> '0',
		saida7seg	=> HEX4
	);
	
DECODER_HEX5:  
	entity work.conversorHex7Seg
   port map(
		dadoHex		=> entradaDisplay(23 downto 20),
		apaga			=> '0',
		negativo 	=> '0',
		overFlow 	=> '0',
		saida7seg	=> HEX5
	);

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