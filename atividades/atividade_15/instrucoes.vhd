library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity instrucoes is
  -- O generic é onde carrega as constantes padroes
  generic
  (
		larguraDados    : natural  :=    32;
		larguraEnd      : natural  :=    5;
		larguraFunct    : natural  :=    6;
		larguraShamt    : natural  :=    5;
		larguraOpcode   : natural  :=    6;
		larguraImediato : natural  :=    16;
		

  );
  
  -- O port é obrigatório e possui o objeto “signal” implícito.
  port    
  (	
		pontosControle           : in  std_logic_vector(larguraControle-1 downto 0);
		opcode                   : out std_logic_vector(larguraDados-1 downto 0) -- saida para a unidade de controle
  );
end entity;   -- Também pode ser utilizado: "end entity";

architecture arquitetura of instrucoes is                                    
		signal CLK                    : std_logic;
		
		-- PC
		signal saidaPC                : std_logic_vector (larguraDados-1 downto 0); -- endereco instrucao da ROM
		signal saidaIncPC             : std_logic_vector (larguraDados-1 downto 0); -- saida do PC+4
		signal saidaMuxPC             : std_logic_vector (larguraDados-1 downto 0); 
		
		-- ROM
		signal saidaROM               : std_logic_vector (larguraDados-1 downto 0); -- instrucao da ROM
		alias endRs                 	: std_logic_vector (larguraEnd-1 downto 0) is saidaROM(25 downto 21);
		alias endRt                 	: std_logic_vector (larguraEnd-1 downto 0) is saidaROM(20 downto 16);
		alias endRd                 	: std_logic_vector (larguraEnd-1 downto 0) is saidaROM(15 downto 11);
		alias imediato                : std_logic_vector (larguraImediato-1 downto 0) is saidaROM(15 downto 0);
		
		-- BANCO REG
		-- Dados lidos do Banco Reg
		signal saidaRs                : std_logic_vector (larguraDados-1 downto 0);
		signal saidaRt                : std_logic_vector (larguraDados-1 downto 0);
		
		-- PONTOS DE CONTROLE
		signal controle                : std_logic_vector (larguraControle-1 downto 0);
		alias WR                       : std_logic is controle(0);
		alias RD                       : std_logic is controle(1);
		alias BEQ                      : std_logic is controle(2);
		alias habMuxULAMem             : std_logic is controle(3);
		alias ULActrl                 : std_logic_vector(1 downto 0) is controle(4 downto 3);
		alias habMuxRtImediato         : std_logic is controle(6);
		alias habBancoReg              : std_logic is controle(7);
		alias habMuxRtRd               : std_logic is controle(8);
		alias habMuxPC                 : std_logic is controle(9);

		-- ULA
		signal saidaOpULA              : std_logic_vector(larguraDados-1 downto 0);
		signal saidaZeroULA            : std_logic;

		-- MUX ULA MEM
		signal saidaMuxULAMem             : std_logic_vector(larguraDados-1 downto 0);
		
		-- MUX RT IMEDIATO
		signal saidaMuxRtImediato      : std_logic_vector(larguraDados-1 downto 0);

		-- MUX RT RD
		signal saidaMuxRtRd            : std_logic_vector(larguraEnd-1 downto 0);

		-- MUX PC
		signal saidaMuxPC              : std_logic_vector(larguraDados-1 downto 0);

		-- MUX BEQ
		signal saidaMuxBEQ             : std_logic_vector(larguraDados-1 downto 0);

		-- ESTENDE SINAL
		signal sinalEstendido          : std_logic_vector(larguraDados-1 downto 0);
		signal sinalEstendidoShiftado  : std_logic_vector(larguraDados-1 downto 0);

		-- RAM
		signal dadoLidoRAM             : std_logic_vector(larguraDados-1 downto 0);

		-- SOMADOR
		signal saidaSomador            : std_logic_vector(larguraDados-1 downto 0)


begin

-- Instanciando os componentes:


ULA    : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
            port map (  entradaA  => saidaRs, 
						entradaB  => saidaRt,
					    seletor   => ULActrl,
						saida     => saidaOpULA);

PC     : entity work.registradorGenerico  generic map (larguraDados => larguraDados)
             port map (	DIN     => saidaMuxPC, 
						DOUT    => saidaPC, 
				   		ENABLE  => '1', 
				   		CLK     => CLK, 
				   		RST     => '0');	

PC_INC :  entity work.somaUm  generic map (larguraDados => larguraDados , constante => 4)
            port map(   entrada   => saidaPC, 
					    saida     => saidaIncPC);			
              
bancoReg : entity work.bancoReg   generic map (larguraDados => larguraDados, larguraEndBancoRegs => larguraEnd)
          port map (  	clk => CLK,
                      	enderecoA => endRs,
                      	enderecoB => endRt,
                      	enderecoC => saidaMuxRtRd,
                      	dadoEscritaC => saidaMuxULAMem,
                      	escreveC => habBancoReg,
                      	saidaA => saidaRs,
                      	saidaB  => saidaRt);

ROMMIPS : entity work.ROMMIPS   generic map (dataWidth => larguraDados, addrWidth => larguraDados)
          port map ( 	clk => CLK,
						Endereco => saidaPC, 
						Dado => saidaROM);
							
muxULAMem :  entity work.muxGenerico2x1  generic map (larguraDados => VALOR_LOCAL)
          port map( 	entradaA_MUX => sinalLocal,
                 		entradaB_MUX =>  sinalLocal,
                 		seletor_MUX => sinalLocal,
                 		saida_MUX => sinalLocal);

muxRtImediato :  entity work.muxGenerico2x1  generic map (larguraDados => VALOR_LOCAL)
          port map( 	entradaA_MUX => sinalLocal,
                 		entradaB_MUX =>  sinalLocal,
                 		seletor_MUX => sinalLocal,
                 		saida_MUX => sinalLocal);

muxBEQ :  entity work.muxGenerico2x1  generic map (larguraDados => VALOR_LOCAL)
          port map( 	entradaA_MUX => sinalLocal,
                 		entradaB_MUX =>  sinalLocal,
                 		seletor_MUX => sinalLocal,
                 		saida_MUX => sinalLocal);

muxRtRd :  entity work.muxGenerico2x1  generic map (larguraDados => VALOR_LOCAL)
          port map( 	entradaA_MUX => sinalLocal,
                 		entradaB_MUX =>  sinalLocal,
                 		seletor_MUX => sinalLocal,
                 		saida_MUX => sinalLocal);

muxPC :  entity work.muxGenerico2x1  generic map (larguraDados => VALOR_LOCAL)
          port map( 	entradaA_MUX => sinalLocal,
                 		entradaB_MUX =>  sinalLocal,
                 		seletor_MUX => sinalLocal,
                 		saida_MUX => sinalLocal);

				 


controle <= pontosControle;



end architecture;