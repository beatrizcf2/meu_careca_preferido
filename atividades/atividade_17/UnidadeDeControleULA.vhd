library ieee;
use ieee.std_logic_1164.all;

entity UnidadeDeControleULA is
  port (ULAop   : in std_logic_vector(1 downto 0);
        funct   : in std_logic_vector(5 downto 0);
        ULActrl : out std_logic_vector(3 downto 0)
  );
end entity;

architecture comportamento of UnidadeDeControleULA is

  -- ULAop
  constant SOMA  : std_logic_vector(1 downto 0) := "00"; -- lw/sw
  constant SUB  : std_logic_vector(1 downto 0) := "01"; -- beq
  constant FUNCT  : std_logic_vector(1 downto 0) := "10"; -- consultar funct (instr R)

  -- ULActrl
  constant ctrlAND  : std_logic_vector(3 downto 0) := "0000";
  constant ctrlOR   : std_logic_vector(3 downto 0) := "0001";
  constant ctrlADD  : std_logic_vector(3 downto 0) := "0010";
  constant ctrlSUB  : std_logic_vector(3 downto 0) := "0110";
  constant ctrlSLT  : std_logic_vector(3 downto 0) := "0111";

  
  begin
  -- and = 24hex = 100100
  -- or  = 25hex = 100101
  -- add = 20hex = 100000
  -- sub = 22hex = 100010
  -- slt = 2Ahex = 101010

   ULActrl <= ctrlADD when (ULAop = SOMA) or ((ULAop = FUNCT) and (funct = "100000")) else -- lw/sw no ULAop ou add (instr R)
              ctrlSUB when (ULAop = SUB) or ((ULAop = FUNCT) and (funct = "100010")) else -- beq no ULAop ou sub (instr R)
              ctrlAND when (ULAop = FUNCT) and (funct = "100100") else -- and (instr R)
              ctrlOR  when (ULAop = FUNCT) and (funct = "100101") else -- or  (instr R)
              ctrlSLT when (ULAop = FUNCT) and (funct = "101010") else -- slt (instr R)
              "00";
	
				 
end architecture;