
library ieee;
use ieee.std_logic_1164.all;

entity decoder is
  port ( entrada : in std_logic_vector(3 downto 0);
         saida : out std_logic_vector(5 downto 0)
  );
end entity;

architecture comportamento of decoder is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SUM  : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";

  begin
	 -- reset (CLRA)
	 
	 saida <= "011010" when (entrada = LDA)  else
				 "010110" when (entrada = SUM)  else
				 "010010" when (entrada = SUB)  else 
				 "111000" when (entrada = LDI)  else
				 "000001" when (entrada = STA)  else 
				 "000000" when (entrada = NOP)  else
				 "000000";
				 
end architecture;