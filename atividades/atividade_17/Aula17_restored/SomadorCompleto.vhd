library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity SomadorCompleto is
    port (
      entradaA:    in std_logic;
		entradaB:    in std_logic;
      carry_in:    in STD_LOGIC;
		carry_out:   out std_logic;
      soma:        out std_logic
    );
	 
end entity;

architecture comportamento of SomadorCompleto is

   signal saidaXOR_AB :        std_logic;
   signal saidaAND_AB :        std_logic;
	signal saidaAND_carry_in:   std_logic;
	
   
begin	
					  
saidaXOR_AB <= entradaA XOR entradaB;
saidaAND_AB <= entradaA AND entradaB;
soma <= carry_in XOR saidaXOR_AB;
saidaAND_carry_in <= carry_in AND saidaXOR_AB;
carry_out <= saidaAND_carry_in OR saidaAND_AB;
      
		
end architecture;