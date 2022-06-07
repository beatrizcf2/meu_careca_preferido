
library ieee;
use ieee.std_logic_1164.all;

entity UnidadeDeControleFD is
  generic
  ( larguraOpcode    : natural  :=    6;
		larguraControle  : natural  :=    14
  );
  port (opcode : in std_logic_vector(larguraOpcode-1 downto 0);
        funct  : in std_logic_vector(larguraOpcode-1 downto 0);
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
  constant funct_jr   : std_logic_vector(5 downto 0) := "101010";

  -- opcode instruções I
  constant opcode_lw    : std_logic_vector(5 downto 0) := "100011";
  constant opcode_sw    : std_logic_vector(5 downto 0) := "101011";
  constant opcode_lui   : std_logic_vector(5 downto 0) := "001111";
  constant opcode_addi  : std_logic_vector(5 downto 0) := "001000";
  constant opcode_andi  : std_logic_vector(5 downto 0) := "001100";
  constant opcode_ori   : std_logic_vector(5 downto 0) := "001101";
  constant opcode_slti  : std_logic_vector(5 downto 0) := "001010";
  constant opcode_bne   : std_logic_vector(5 downto 0) := "000101";
  constant opcode_beq   : std_logic_vector(5 downto 0) := "000100";

  -- opcode instruções J
  constant opcode_jmp   : std_logic_vector(5 downto 0) := "000010"; -- a instrução se chama "j"
  constant opcode_jal   : std_logic_vector(5 downto 0) := "000011";

  -- Pontos de controle
	signal instrucao               : std_logic_vector (larguraControle-1 downto 0);
	alias habEscritaMEM            : std_logic is instrucao(0);
	alias habLeituraMEM            : std_logic is instrucao(1);
	alias habBNE                   : std_logic is instrucao(2);
	alias habBEQ                   : std_logic is instrucao(3);
	alias habMuxULAMem             : std_logic_vector(1 downto 0) is instrucao(5 downto 4);
	alias tipoR                    : std_logic is instrucao(6);
	alias habMuxRtImediato         : std_logic is instrucao(7);
	alias habEscritaReg            : std_logic is instrucao(8);
	alias ORIANDI                  : std_logic is instrucao(9);
	alias habMuxRtRd               : std_logic_vector(1 downto 0) is instrucao(11 downto 10);
	alias habMuxPCBEQ              : std_logic is instrucao(12);
	alias JR                       : std_logic is instrucao(13);
  
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


  habEscritaMEM        <= '1' when (opcode = opcode_sw) else '0';
	habLeituraMEM        <= '1' when (opcode = opcode_lw) else '0';
	habBNE               <= '1' when (opcode = opcode_slti);
	habBEQ               <= '1' when (opcode = opcode_beq) else '0';
	habMuxULAMem         <= "01" when (opcode = opcode_lw) else
                          "10" when (opcode = opcode_jal) else
                          "11" when (opcode = opcode_lui) else
                          "00";
	tipoR                <= '1' when (opcode = opcode_R) else '0';
	habMuxRtImediato     <= '1' when (opcode = opcode_lw) or (opcode = opcode_sw) or (opcode = opcode_lui) or
                                   (opcode = opcode_addi) or (opcode = opcode_andi) or (opcode = opcode_ori) or
                                   (opcode = opcode_slti) else '0';
	habEscritaReg        <= '1' when (opcode = opcode_lw) or (opcode = opcode_lui) or (opcode = opcode_addi) or 
                                   (opcode = opcode_andi) or (opcode = opcode_ori) or (opcode = opcode_slti) or
                                   (opcode = opcode_jal) or ((opcode = opcode_R) and not (funct = funct_jr)) else '0'; 
	ORIANDI              <= '1' when (opcode = opcode_ori) or (opcode = opcode_andi) else '0';
	habMuxRtRd           <= "00" when (not (opcode = opcode_R)) else
                          "01" when (opcode = opcode_R) else
                          "10" when (opcode = opcode_jal) else 
                          "00";
	habMuxPCBEQ          <= '1' when (opcode = opcode_jmp) else '0';
	JR                   <= '1' when (opcode = opcode_R) and (funct = funct_jr) else '0';
    -- add novos pontos de controle
	saida <= instrucao;
	
				 
end architecture;