
library ieee;
use ieee.std_logic_1164.all;

entity decoder is
  port ( entrada : in std_logic_vector(3 downto 0);
         saida : out std_logic_vector(11 downto 0)
  );
end entity;

architecture comportamento of decoder is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SUM  : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";
  constant JMP  : std_logic_vector(3 downto 0) := "0110";
  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
  constant JSR  : std_logic_vector(3 downto 0) := "1001";
  constant RET  : std_logic_vector(3 downto 0) := "1010"; 
  

  begin
	 -- reset (CLRA)
	 
	 saida <= "001000000000" when (entrada = RET)  else
				 "100100000000" when (entrada = JSR)  else
				 "010000000000" when (entrada = JMP)  else
				 "000010000000" when (entrada = JEQ)  else
				 "000000000100" when (entrada = CEQ)  else
				 "000000110010" when (entrada = LDA)  else
				 "000000101010" when (entrada = SUM)  else
				 "000000100010" when (entrada = SUB)  else 
				 "000001110000" when (entrada = LDI)  else
				 "000000000001" when (entrada = STA)  else 
				 "000000000000" when (entrada = NOP)  else
				 "000000000000";
				 
--	saida(2) <= '1' when (entrada = CEQ);
				 
end architecture;