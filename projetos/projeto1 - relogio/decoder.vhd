
library ieee;
use ieee.std_logic_1164.all;

entity decoder is
  port ( entrada : in std_logic_vector(3 downto 0);
         saida : out std_logic_vector(13 downto 0)
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
  
  
  signal instruction : std_logic_vector(13 downto 0);
  
  alias  habEscritaRetorno          : std_logic is instruction(13);
  alias  jmpI                       : std_logic is instruction(12);
  alias  retI                       : std_logic is instruction(11);
  alias  jsrI                       : std_logic is instruction(10);
  
  alias  jeqI                       : std_logic is instruction(9);
  alias  selMuxULA                  : std_logic is instruction(8);
  alias  selMuxImRAM                : std_logic is instruction(7);
  alias  habBanco                   : std_logic is instruction(6);
  
  alias  operacao                   : std_logic_vector is instruction(5 downto 3);
  alias  habFlag                    : std_logic is instruction(2);
  alias  RD                         : std_logic is instruction(1);
  alias  WR                         : std_logic is instruction(0);
  
  

  begin
	 -- reset (CLRA)
	 
	 
	 WR <= '1' when (entrada = STA) else '0';
	 RD <= '1' when (entrada = LDA) or (entrada = SUM) or (entrada = SUB) or (entrada = CEQ) else '0';
	 habFlag <= '1' when (entrada = CEQ) else '0';
	 operacao <= "000" when (entrada = SUB) or (entrada=CEQ) else 
					 "001" when (entrada = SUM) else 
					 "010" when (entrada = LDI) or (entrada = LDA) else 
					 "000";
	 habBanco <= '1' when (entrada = LDA) or  (entrada = SUM) or  (entrada = SUB) or  (entrada = LDI) else '0';
	 selMuxImRAM <= '1' when (entrada = LDI) else '0';
	 selMuxULA <= '1' when (entrada = SUM) or (entrada = SUB) else '0';
	 jeqI <= '1' when (entrada = JEQ) else '0';
	 jsrI <= '1' when (entrada = JSR) else '0';
	 retI <= '1' when (entrada = RET) else '0';
	 jmpI <= '1' when (entrada = JMP) else '0';
	 habEscritaRetorno <= '1' when (entrada = JSR) else '0';
	 
	 saida <= instruction;
	
				 
end architecture;