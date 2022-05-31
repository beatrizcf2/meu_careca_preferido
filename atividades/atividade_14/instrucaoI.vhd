library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FDinstrucaoI is
  -- O generic é onde carrega as constantes padroes
  generic
  (
		larguraDados    : natural  :=    32;
		larguraEnd      : natural  :=    5;
		larguraFunct    : natural  :=    6;
		larguraShamt    : natural  :=    5;
		larguraOpcode   : natural  :=    6

  );
  
  -- O port é obrigatório e possui o objeto “signal” implícito.
  port    
  (
		habBancoReg              : in  std_logic;
		opULA                    : in  std_logic_vector (1 downto 0);
		saida                    : out std_logic_vector(larguraDados-1 downto 0) -- barramento de instrucoes
  );
end entity;   -- Também pode ser utilizado: "end entity";

architecture arquitetura of FDinstrucaoI is                                    
		signal CLK                    : std_logic;
		
		signal saidaPC                : std_logic_vector (larguraDados-1 downto 0);
		signal saidaIncPC             : std_logic_vector (larguraDados-1 downto 0);

		signal saidaRs                : std_logic_vector (larguraDados-1 downto 0);
		signal saidaRt                : std_logic_vector (larguraDados-1 downto 0);
		signal saidaULARd             : std_logic_vector (larguraDados-1 downto 0); -- saida ULA: Rs op Rt

		signal saidaROM               : std_logic_vector (larguraDados-1 downto 0);
		alias endRs                 	: std_logic_vector (larguraEnd-1 downto 0) is saidaROM(25 downto 21);
		alias endRt                 	: std_logic_vector (larguraEnd-1 downto 0) is saidaROM(20 downto 16);
		alias endRd                 	: std_logic_vector (larguraEnd-1 downto 0) is saidaROM(15 downto 11);

		

begin

-- Instanciando os componentes:


ULA    : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
            port map (entradaA  => saidaRs, 
							 entradaB  => saidaRt,
							 seletor   => opULA,
							 saida     => saidaULARd);

PC     : entity work.registradorGenerico  generic map (larguraDados => larguraDados)
             port map (DIN     => saidaIncPC, 
						     DOUT    => saidaPC, 
				   		  ENABLE  => '1', 
				   		  CLK     => CLK, 
				   		  RST     => '0');	

PC_INC :  entity work.somaUm  generic map (larguraDados => larguraDados , constante => 1)
            port map(entrada   => saidaPC, 
							saida     => saidaIncPC);			
              
bancoReg : entity work.bancoReg   generic map (larguraDados => larguraDados, larguraEndBancoRegs => larguraEnd)
          port map (  clk => CLK,
                      enderecoA => endRs,
                      enderecoB => endRt,
                      enderecoC => endRd,
                      dadoEscritaC => saidaULARd,
                      escreveC => habBancoReg,
                      saidaA => saidaRs,
                      saidaB  => saidaRt);

ROMMIPS : entity work.ROMMIPS   generic map (dataWidth => larguraDados, addrWidth => larguraDados)
          port map ( clk => CLK,
							Endereco => saidaPC, 
							Dado => saidaROM);


saida <= saidaROM;


end architecture;