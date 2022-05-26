
library ieee;
use ieee.std_logic_1164.all;

entity UnidadeDeControle is
  generic
  (
		larguraOpcode    : natural  :=    6;
		larguraControle  : natural  :=    10
  );
  port (entrada : in std_logic_vector(larguraOpcode-1 downto 0);
        saida   : out std_logic_vector(larguraControle-1 downto 0)
       );
end entity;

architecture comportamento of UnidadeDeControle is

  -- Opcodes
  constant NOP  : std_logic_vector(larguraOpcode-1 downto 0) := "000000";
  constant LW   : std_logic_vector(larguraOpcode-1 downto 0) := "000001";
  constant SW   : std_logic_vector(larguraOpcode-1 downto 0) := "000010";
  constant ADD  : std_logic_vector(larguraOpcode-1 downto 0) := "000011";
  constant SUB  : std_logic_vector(larguraOpcode-1 downto 0) := "000100";
  constant E    : std_logic_vector(larguraOpcode-1 downto 0) := "000101";
  constant OU   : std_logic_vector(larguraOpcode-1 downto 0) := "000110";
  constant SLT  : std_logic_vector(larguraOpcode-1 downto 0) := "000111";
  constant BEQ  : std_logic_vector(larguraOpcode-1 downto 0) := "001000";
  constant J    : std_logic_vector(larguraOpcode-1 downto 0) := "001001";  
  
  -- Pontos de controle
  signal instruction      : std_logic_vector(9 downto 0);
  alias  habMuxPC         : std_logic is instruction(9);
  alias  habMuxRtRd       : std_logic is instruction(8);
  alias  habEscritaReg    : std_logic is instruction(7);
  alias  habMuxRtImediato : std_logic is instruction(6);
  alias  ULAop            : std_logic_vector(1 downto 0) is instruction(5 downto 4);
  alias  habMuxULAmem     : std_logic is instruction(3);
  alias  habBEQ           : std_logic is instruction(2);
  
  alias  habLeituraMEM    : std_logic is instruction(1);
  alias  habEscritaMEM    : std_logic is instruction(0);
  
  begin
	 
   -- Ajustando os valores dos pontos de controle
	 habMuxPC          <= '1' when (entrada = J) else '0';
   habMuxRtRd        <= '1' when (entrada = ADD) or (entrada = SUB) or (entrada = E) or (entrada = OU) or (entrada = SLT) else '0';
   habEscritaReg     <= '1' when (entrada = LW) or (entrada = ADD) or (entrada = SUB) or (entrada = OU) or (entrada = E) or (entrada = SLT) else '0';
   habMuxRtImediato  <= '1' when (entrada = LW) or (entrada = SW) else '0';
   ULAop             <= "00" when (entrada = LW) or (entrada = SW) or (entrada = ADD) else 
                        "01" when (entrada = SUB) or (entrada = BEQ) else
                        "10" when (entrada = E) or (entrada = OU) or (entrada = SLT) else  
                        "00";
   habMuxULAmem      <= '1' when (entrada = LW) else '0';
   habBEQ            <= '1' when (entrada = BEQ) else '0';
	 habEscritaMEM     <= '1' when (entrada = SW) else '0';

	 
	 saida <= instruction;
	
				 
end architecture;