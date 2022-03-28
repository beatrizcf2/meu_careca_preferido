-- modulo da logica de desvio


library ieee;
use ieee.std_logic_1164.all;

entity desvio is
  port ( JMP, JEQ, IGUAL : in std_logic;
         saida : out std_logic
  );
end entity;

architecture comportamento of desvio is
  

  begin
	 -- reset (CLRA)
	 
	 saida <= '0'  when (JMP='0' AND JEQ='0')  else
	 	       '1'  when (JMP='1' AND JEQ='0')  else
				 '0'  when (JMP='0' AND JEQ='1' AND IGUAL='0')  else
	 	       '1'  when (JMP='0' AND JEQ='1' AND IGUAL='1')  else
				 '0';

				 
end architecture;