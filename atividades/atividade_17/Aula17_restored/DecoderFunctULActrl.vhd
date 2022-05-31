library ieee;
use ieee.std_logic_1164.all;

entity DecoderFunctULActrl is
  port (funct   : in std_logic_vector(5 downto 0);
        ULActrl : out std_logic_vector(3 downto 0)
  );
end entity;

architecture comportamento of DecoderFunctULActrl is

  -- ULActrl
  constant ctrlAND  : std_logic_vector(3 downto 0) := "0000";
  constant ctrlOR   : std_logic_vector(3 downto 0) := "0001";
  constant ctrlADD  : std_logic_vector(3 downto 0) := "0010";
  constant ctrlSUB  : std_logic_vector(3 downto 0) := "0110";
  constant ctrlSLT  : std_logic_vector(3 downto 0) := "0111";
  
  -- funct instruções R
  constant funct_and  : std_logic_vector(5 downto 0) := "100100";
  constant funct_or   : std_logic_vector(5 downto 0) := "100101";
  constant funct_add  : std_logic_vector(5 downto 0) := "100000";
  constant funct_sub  : std_logic_vector(5 downto 0) := "100010";
  constant funct_slt  : std_logic_vector(5 downto 0) := "101010";

  
  begin
	
    ULActrl <= ctrlADD when (funct = funct_add) else
               ctrlSUB when (funct = funct_sub) else 
               ctrlAND when (funct = funct_and) else 
               ctrlOR  when (funct = funct_or)  else
               ctrlSLT when (funct = funct_slt) else
               "0000";

end architecture;