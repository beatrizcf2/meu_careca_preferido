
library ieee;
use ieee.std_logic_1164.all;

entity UnidadeDeControleFD is
  generic
  ( larguraOpcode    : natural  :=    6;
		larguraControle  : natural  :=    9
  );
  port (entrada : in std_logic_vector(larguraOpcode-1 downto 0);
        saida   : out std_logic_vector(larguraControle-1 downto 0) -- indica se e tipoR
       );
end entity;

architecture comportamento of UnidadeDeControleFD is

  -- ULAop
  constant SOMA  : std_logic_vector(1 downto 0) := "00"; -- lw/sw
  constant SUB  : std_logic_vector(1 downto 0) := "01"; -- beq
  constant CONSULTA_FUNCT  : std_logic_vector(1 downto 0) := "10"; -- consultar funct (instr R)

  -- funct instruções R
  constant opcode_R   : std_logic_vector(5 downto 0) := "000000";
  constant funct_and  : std_logic_vector(5 downto 0) := "100100";
  constant funct_or   : std_logic_vector(5 downto 0) := "100101";
  constant funct_add  : std_logic_vector(5 downto 0) := "100000";
  constant funct_sub  : std_logic_vector(5 downto 0) := "100010";
  constant funct_slt  : std_logic_vector(5 downto 0) := "101010";

  -- opcode instruções I
  constant opcode_lw    : std_logic_vector(5 downto 0) := "100011";
  constant opcode_sw    : std_logic_vector(5 downto 0) := "101011";
  constant opcode_lui   : std_logic_vector(5 downto 0) := "001111";
  constant opcode_addi  : std_logic_vector(5 downto 0) := "001000";
  constant opcode_andi  : std_logic_vector(5 downto 0) := "001100";
  constant opcode_ori   : std_logic_vector(5 downto 0) := "001101";
  constant opcode_slti  : std_logic_vector(5 downto 0) := "001010";
  constant opcode_bne   : std_logic_vector(5 downto 0) := "000101";

  -- opcode instruções J
  constant opcode_beq   : std_logic_vector(5 downto 0) := "000100";
  constant opcode_jmp   : std_logic_vector(5 downto 0) := "000010"; -- a instrução se chama "j"
  constant opcode_jal   : std_logic_vector(5 downto 0) := "000011";

  -- Pontos de controle
  signal instruction      : std_logic_vector(8 downto 0);
  alias  habMuxPC         : std_logic is instruction(8);
  alias  habMuxRtRd       : std_logic is instruction(7);
  alias  habEscritaReg    : std_logic is instruction(6);
  alias  habMuxRtImediato : std_logic is instruction(5);
  alias  tipoR            : std_logic is instruction(4);
  alias  habMuxULAmem     : std_logic is instruction(3);
  alias  habBEQ           : std_logic is instruction(2);
  alias  habLeituraMEM    : std_logic is instruction(1);
  alias  habEscritaMEM    : std_logic is instruction(0);
  
  begin
	 -- !! FALTA AJUSTAR PARA OS NOVOS PONTOS DE CONTROLE DAS INSTRUCOES TIPO B!!
   -- Ajustando os valores dos pontos de controle
    -- habMuxPC          <= '1' when (entrada = opcode_jmp) else '0';
    -- habMuxRtRd        <= '1' when (entrada = opcode_R) else '0';
    -- habEscritaReg     <= '1' when (entrada = opcode_lw) or (entrada = opcode_R) else '0';
    -- habMuxRtImediato  <= '1' when (entrada = opcode_lw) or (entrada = opcode_sw) else '0';
    -- tipoR             <= '1' when (entrada = opcode_R) else '0';
    -- habMuxULAmem      <= '1' when (entrada = opcode_lw) else '0';
    -- habBEQ            <= '1' when (entrada = opcode_beq) else '0';
  	-- habEscritaMEM     <= '1' when (entrada = opcode_sw) else '0';
    -- add novos pontos de controle
	 
	saida <= instruction;
	
				 
end architecture;