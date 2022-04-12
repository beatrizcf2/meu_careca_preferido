library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity exercicio1 is
  -- O generic é onde carrega as constantes padroes
  generic
  (
		larguraDados    : natural  :=    32
        nPontosControle : natural  :=    3
  );
  
  -- O port é obrigatório e possui o objeto “signal” implícito.
  port    
  (
		entrada                  : in  std_logic_vector(larguraDados-1 downto 0);
		saida                    : out std_logic_vector(larguraDados-1 downto 0);
		pontosControle           : in std_logic_vector (nPontosControle-1 downto 0)
  );
end entity;   -- Também pode ser utilizado: "end entity";

architecture arquitetura of exercicio1 is                                    
		alias habilita1                 : std_logic is pontosControle(3);
		alias selMux                    : std_logic is pontosControle(2);
		alias opULA                     : std_logic is pontosControle(1);
		alias habilita2                 : std_logic is pontosControle(0);
		
		signal CLK                      : std_logic;
		signal saidaReg1                : std_logic_vector (larguraDados-1 downto 0);
		signal saidaULA                 : std_logic_vector (larguraDados-1 downto 0);
		signal saidaMUX                 : std_logic_vector (larguraDados-1 downto 0);
		signal saidaReg2                : std_logic_vector (larguraDados-1 downto 0);

begin

-- Instanciando os componentes:


MUX    :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
             port map(entradaA_MUX => saidaReg2,
                      entradaB_MUX => saidaReg1,
                      seletor_MUX  => selMux,
                      saida_MUX    => saidaMux);

REG1    : entity work.registradorGenerico  generic map (larguraDados => larguraDados)
             port map (DIN     => entrada, 
						     DOUT    => saidaReg1, 
				   		  ENABLE  => habilita1, 
				   		  CLK     => CLK, 
				   		  RST     => '0');							  

REG2    : entity work.registradorGenerico  generic map (larguraDados => larguraDados)
             port map (DIN     => saidaULA, 
						     DOUT    => saidaReg2, 
				   		  ENABLE  => habilita2 , 
				   		  CLK     => CLK, 
				   		  RST     => '0');

ULA    : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
            port map (entradaA  => saidaMUX, 
							 entradaB  => saidaReg1,
							 seletor   => opULA,
							 saida     => saidaULA);

saida <= saidaReg2;

end architecture;