library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity exercicio3 is
  -- O generic é onde carrega as constantes padroes
  generic
  (
		larguraDados    : natural  :=    32
  );
  
  -- O port é obrigatório e possui o objeto “signal” implícito.
  port    
  (
		entrada                  : in  std_logic_vector(larguraDados-1 downto 0);
		saida                    : out std_logic_vector(larguraDados-1 downto 0);
		selMux                   : in std_logic
  );
end entity;   -- Também pode ser utilizado: "end entity";

architecture arquitetura of exercicio3 is                                    
		signal CLK                      : std_logic;
		signal saidaPC                  : std_logic_vector (larguraDados-1 downto 0);
		signal saidaMuX                 : std_logic_vector (larguraDados-1 downto 0);
		signal saidaIncPC               : std_logic_vector (larguraDados-1 downto 0);

		
begin

-- Instanciando os componentes:


MUX    :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
             port map(entradaA_MUX => entrada,
                      entradaB_MUX => saidaIncPC,
                      seletor_MUX  => selMux,
                      saida_MUX    => saidaMux);

PC     : entity work.registradorGenerico  generic map (larguraDados => larguraDados)
             port map (DIN  => , 
						     DOUT    => , 
				   		  ENABLE  => '1', 
				   		  CLK     => CLK, 
				   		  RST     => '0');	

PC_INC :  entity work.somaConstante  generic map (larguraDados => larguraDados , constante => 1)
            port map(entrada   => saidaPC, 
							saida     => saidaIncPC);			
              
bancoReg : entity work.bancoReg   generic map (larguraDados => valorLocal, larguraEndBancoRegs => valorLocal)
          port map (  clk => sinalLocal,
                      enderecoA => sinalLocal,
                      enderecoB => sinalLocal,
                      enderecoC => sinalLocal,
                      dadoEscritaC => sinalLocal,
                      escreveC => sinalLocal,
                      saidaA => sinalLocal,
                      saidaB  => sinalLocal);






saida <= saidaPC;
--entrada <= entradaModulo;

end architecture;