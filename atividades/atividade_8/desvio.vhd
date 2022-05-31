-- modulo da logica de desvio


library ieee;
use ieee.std_logic_1164.all;

entity desvio is
  port ( JMP, JEQ, RET, JSR, IGUAL : in std_logic;
         saida : out std_logic_vector(1 downto 0)
  );
end entity;

architecture comportamento of desvio is
  

  begin
	 
	 saida <= "00"  when (JMP='0' AND JEQ='0' AND JSR='0' AND RET='0')   or (JMP='0' AND JEQ='1' AND JSR='0' AND RET='0' AND IGUAL='0')	else
	 	       "01"  when (JMP='1' AND JEQ='0' AND JSR='0' AND RET='0')  	or (JMP='0' AND JEQ='1' AND JSR='0' AND RET='0' AND IGUAL='1') or (JMP='0' AND JEQ='0' AND JSR='1' AND RET='0') else
				 "10"  when (JMP='0' AND JEQ='0' AND JSR='0' AND RET='1')   else
				 "00";

				 
end architecture;