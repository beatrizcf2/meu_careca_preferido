library ieee;
use ieee.std_logic_1164.all;

entity DecoderOpCodeULActrl is
  generic
  (
		larguraOpcode     : natural  := 6
  );
  port (opcode   : in std_logic_vector(5 downto 0);
        ULActrl : out std_logic_vector(3 downto 0)
  );
end entity;

architecture comportamento of DecoderOpCodeULActrl is
  
  -- ULActrl
  constant ctrlAND  : std_logic_vector(3 downto 0) := "0000";
  constant ctrlOR   : std_logic_vector(3 downto 0) := "0001";
  constant ctrlADD  : std_logic_vector(3 downto 0) := "0010";
  constant ctrlSUB  : std_logic_vector(3 downto 0) := "0110";
  constant ctrlSLT  : std_logic_vector(3 downto 0) := "0111";
  
  -- Tipo I
  -- A
  constant BEQ  : std_logic_vector(larguraOpcode-1 downto 0) := "000100";
  constant LW   : std_logic_vector(larguraOpcode-1 downto 0) := "100011";
  constant SW   : std_logic_vector(larguraOpcode-1 downto 0) := "101011";
  -- B
  constant LUI  : std_logic_vector(larguraOpcode-1 downto 0) := "001111";
  constant ADDI : std_logic_vector(larguraOpcode-1 downto 0) := "001000";
  constant ANDI : std_logic_vector(larguraOpcode-1 downto 0) := "001100";
  constant ORI  : std_logic_vector(larguraOpcode-1 downto 0) := "001101";
  constant SLTI : std_logic_vector(larguraOpcode-1 downto 0) := "001010";
  
  begin
	
    ULActrl <= ctrlADD when (opcode = LW) or (opcode = SW) or (opcode = ADDI)else
               ctrlSUB when (opcode = BEQ)  else 
               ctrlAND when (opcode = ANDI) else 
               ctrlOR  when (opcode = ORI)  else
               ctrlSLT when (opcode = SLTI) else 
               "0000";

end architecture;