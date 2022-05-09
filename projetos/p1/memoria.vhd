library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
          addrWidth: natural := 10
    );
   port (
			 
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is
	
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
  
  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
-------------------------------------------------------------------
--CODIGO ASSEMBLY RELOGIO
-------------------------------------------------------------------

-- SETUP()

-- Inicializa constantes na memória - usando registrador 0
tmp(0) := "0100000000000000";	-- LDI %r0, $0
tmp(1) := "0101000000000000";	-- STA @0, %r0      #Armazena o valor de r0 em MEM[0] (constante 0)
tmp(2) := "0100000000000001";	-- LDI %r0, $1      
tmp(3) := "0101000000000001";	-- STA @1, %r0      #Armazena o valor de r0 em MEM[1] (constante 1)
tmp(4) := "0100000000001010";	-- LDI %r0, $10
tmp(5) := "0101000000000010";	-- STA @2, %r0      #Armazena o valor de r0 em MEM[2] (constante 10)
tmp(6) := "0100000000000110";	-- LDI %r0, $6
tmp(7) := "0101000000000011";	-- STA @3, %r0      #Armazena o valor de r0 em MEM[3] (constante 6)
tmp(8) := "0100000000000000";	-- LDI %r0, $0
tmp(9) := "0101000000000111";	-- STA @7, %r0       #Armazena o valor de r0 em MEM[7] (flag ta_tarde)
tmp(10) := "0101000000001000";	-- STA @8, %r0       #Armazena o valor de r0 em MEM[8] (flag meia_noite)
tmp(11) := "0100000000000100";	-- LDI %r0, $4
tmp(12) := "0101000000010000";	-- STA @16, %r0      #Armazena o valor de r0 em MEM[16] (constante 4)
tmp(13) := "0100000000000010";	-- LDI %r0, $2
tmp(14) := "0101000000010001";	-- STA @17, %r0      #Armazena o valor de r0 em MEM[17] (constante 2)

-- Inicializa variáveis de tempo (segundos,minutos,horas)
tmp(15) := "0001000000000000";	-- LDA %r0, @0      # apago o led da flag
tmp(16) := "0101000100000011";	-- STA @259, %r0  
tmp(17) := "0100000000000000";	-- LDI %r0, $0 
tmp(18) := "0101000000000111";	-- STA @7, %r0      #Zero a flag ta_tarde
tmp(19) := "0100000000000000";	-- LDI %r0, $0 
tmp(20) := "0101000000001000";	-- STA @8, %r0      #Zero a flag meia_noite
tmp(21) := "0101000000001010";	-- STA @10, %r0     #Armazena o valor de r0 em MEM[10] (unidades segundo)
tmp(22) := "0101000000001011";	-- STA @11, %r0     #Armazena o valor de r1 em MEM[11] (dezenas segundo)
tmp(23) := "0101000000001100";	-- STA @12, %r0     #Armazena o valor de r2 em MEM[12] (unidades minuto)
tmp(24) := "0101000000001101";	-- STA @13, %r0     #Armazena o valor de r3 em MEM[13] (dezenas minuto)
tmp(25) := "0101000000001110";	-- STA @14, %r0     #Armazena o valor de r4 em MEM[14] (unidades hora)
tmp(26) := "0101000000001111";	-- STA @15, %r0     #Armazena o valor de r5 em MEM[15] (dezenas hora)

-- Inicializa os displays
tmp(27) := "0100000000000000";	-- LDI %r0, $0 
tmp(28) := "0101000100100000";	-- STA @288, %r0    #Inicializa display HEX0 com valor 0
tmp(29) := "0101000100100001";	-- STA @289, %r0    #Inicializa display HEX1 com valor 0
tmp(30) := "0101000100100010";	-- STA @290, %r0    #Inicializa display HEX2 com valor 0
tmp(31) := "0101000100100011";	-- STA @291, %r0    #Inicializa display HEX3 com valor 0
tmp(32) := "0101000100100100";	-- STA @292, %r0    #Inicializa display HEX4 com valor 0
tmp(33) := "0101000100100101";	-- STA @293, %r0    #Inicializa display HEX5 com valor 0

tmp(34) := "0001000000001000";	-- LDA %r0, @8      #Carrega flag meia-noite
tmp(35) := "1000000000000001";	-- CEQ %r0, @1      #Compara flag com MEM[1] (constante 1)
tmp(36) := "0111000000001111";	-- JEQ $INICIO      # Se for meia-noite, zero tudo
tmp(37) := "0001001101000011";	-- LDA %r1, @323	 #Carrega o r1 com a base de tempo
tmp(38) := "1000001000000000";	-- CEQ %r1, @0		 #Compara com o valor de MEM[0] (constante 0)
tmp(39) := "0111000000100010";	-- JEQ $LOOP_PRINCIPAL		 #Desvia se igual a 0 (botão não foi pressionado)
tmp(40) := "1001000000101011";	-- JSR $INCREMENTO  #O botão foi pressionado, chama a sub-rotina de incremento 
tmp(41) := "0000000000000000";	-- NOP			     #  NOP
tmp(42) := "0110000000100010";	-- JMP $LOOP_PRINCIPAL      #Fecha o laço principal, faz uma nova leitura de KEY0

tmp(43) := "0101111111111011";	-- STA @507, %r7	 #Limpa a leitura do da base de tempo
tmp(44) := "0001000000001010";	-- LDA %r0, @10     #Carrega o valor de MEM[10] (unidades segundo) no r0
tmp(45) := "0010000000000001";	-- SOMA %r0, @1     #Soma o r0 com o valor de MEM[1] (constante 1)
tmp(46) := "0101000000001010";	-- STA @10, %r0     #Salva o incremento em MEM[10] (unidades segundo)
tmp(47) := "1000000000000010";	-- CEQ %r0, @2      #Compara as unidades de segundo com MEM[2] (constante 10)
tmp(48) := "0111000000110011";	-- JEQ $SEGUNDO_DEZENA #Caso o valor das unidades venha a ser igual a 10, pula para dezenas
tmp(49) := "0110000001011110";	-- JMP $ESCREVE_DISPLAY
tmp(50) := "1010000000000000";	-- RET


tmp(51) := "0001000000000000";	-- LDA %r0, @0      #Carrega o valor de MEM[0] (constante zero) no r0
tmp(52) := "0101000000001010";	-- STA @10, %r0     # Zero as unidades dos segundos
tmp(53) := "0001001000001011";	-- LDA %r1, @11     #Carrega o valor de MEM[11] (dezenas segundo) no r1
tmp(54) := "0010001000000001";	-- SOMA %r1, @1     #Soma o r0 com o valor de MEM[1] (constante 1)
tmp(55) := "0101001000001011";	-- STA @11, %r1     #Salva o incremento em MEM[11] (dezenas segundo)
tmp(56) := "1000001000000011";	-- CEQ %r1, @3      #Compara as unidades de segundo com MEM[3] (constante 6)
tmp(57) := "0111000000111011";	-- JEQ $MINUTO_UNIDADE
tmp(58) := "0110000001011110";	-- JMP $ESCREVE_DISPLAY

tmp(59) := "0001001000000000";	-- LDA %r1, @0      #Carrega o valor de MEM[0] (constante zero) no r0
tmp(60) := "0101001000001011";	-- STA @11, %r1     # Zero as unidades dos segundos
tmp(61) := "0001010000001100";	-- LDA %r2, @12     #Carrega o valor de MEM[12] (unidades minuto) no r2
tmp(62) := "0010010000000001";	-- SOMA %r2, @1     #Soma o r2 com o valor de MEM[1] (constante 1)
tmp(63) := "0101010000001100";	-- STA @12, %r2     #Salva o incremento em MEM[12] (unidades minuto)
tmp(64) := "1000010000000010";	-- CEQ %r2, @2      #Compara as unidades de minuto com MEM[2] (constante 10)
tmp(65) := "0111000001000011";	-- JEQ $MINUTO_DEZENA #Caso o valor das unidades venha a ser igual a 10, pula para dezenas
tmp(66) := "0110000001011110";	-- JMP $ESCREVE_DISPLAY

tmp(67) := "0001010000000000";	-- LDA %r2, @0      #Carrega o valor de MEM[0] (constante zero) no r0
tmp(68) := "0101010000001100";	-- STA @12, %r2     # Zero as unidades dos segundos
tmp(69) := "0001011000001101";	-- LDA %r3, @13     #Carrega o valor de MEM[13] (dezenas minuto) no r3
tmp(70) := "0010011000000001";	-- SOMA %r3, @1     #Soma o r0 com o valor de MEM[1] (constante 1)
tmp(71) := "0101011000001101";	-- STA @13, %r3     #Salva o incremento em MEM[13] (dezenas minuto)
tmp(72) := "1000011000000011";	-- CEQ %r3, @3      #Compara as unidades de minuto com MEM[3] (constante 6)
tmp(73) := "0111000001001011";	-- JEQ $HORA_UNIDADE
tmp(74) := "0110000001011110";	-- JMP $ESCREVE_DISPLAY

tmp(75) := "0001011000000000";	-- LDA %r3, @0      #Carrega o valor de MEM[0] (constante zero) no r3
tmp(76) := "0101011000001101";	-- STA @13, %r3     # Zero as unidades dos segundos
tmp(77) := "0001100000001110";	-- LDA %r4, @14     #Carrega o valor de MEM[14] (unidades hora) no r4
tmp(78) := "0010100000000001";	-- SOMA %r4, @1     #Soma o r4 com o valor de MEM[1] (constante 1)
tmp(79) := "0101100000001110";	-- STA @14, %r4     #Salva o incremento em MEM[14] (unidades hora)
tmp(80) := "1000100000000010";	-- CEQ %r4, @2      #Compara as unidades de hora com MEM[2] (constante 10)
tmp(81) := "0111000001010110";	-- JEQ $HORA_DEZENA #Caso o valor das unidades venha a ser igual a 10, pula para dezenas
tmp(82) := "0001110000000111";	-- LDA %r6, @7      #Carrega o valor de MEM[7] (flag ta_tarde) no r6
tmp(83) := "1000110000000001";	-- CEQ %r6, @1      # Verifica se flag ta_tarde é um
tmp(84) := "0111000001110000";	-- JEQ $TA_TARDE    # pula para verificacao do valor de unidade de hora max (2 ou 4)
tmp(85) := "0110000001011110";	-- JMP $ESCREVE_DISPLAY

tmp(86) := "0001100000000000";	-- LDA %r4, @0      #Carrega o valor de MEM[0] (constante zero) no r0
tmp(87) := "0101100000001110";	-- STA @14, %r4     # Zero as unidades dos segundos
tmp(88) := "0001101000001111";	-- LDA %r5, @15     #Carrega o valor de MEM[15] (dezenas minuto) no r5
tmp(89) := "0010101000000001";	-- SOMA %r5, @1     #Soma o r0 com o valor de MEM[1] (constante 1)
tmp(90) := "0101101000001111";	-- STA @15, %r5     #Salva o incremento em MEM[15] (dezenas minuto)
tmp(91) := "1000101000010001";	-- CEQ %r5, @17      #Compara as dezenas da hora com MEM[17] (2 ou 1)
tmp(92) := "0111000001101011";	-- JEQ $SETA_FLAG
tmp(93) := "0110000001011110";	-- JMP $ESCREVE_DISPLAY

tmp(94) := "0001000000001010";	-- LDA %r0, @10     #Carrega o valor dos segundos em r0
tmp(95) := "0101000100100000";	-- STA @288, %r0    #Inicializa display HEX0 com valor 0
tmp(96) := "0001000000001011";	-- LDA %r0, @11
tmp(97) := "0101000100100001";	-- STA @289, %r0    #Inicializa display HEX1 com valor 0
tmp(98) := "0001000000001100";	-- LDA %r0, @12     #Carrega o valor dos segundos em r0
tmp(99) := "0101010100100010";	-- STA @290, %r2    #Inicializa display HEX2 com valor 0
tmp(100) := "0001000000001101";	-- LDA %r0, @13     #Carrega o valor dos segundos em r0
tmp(101) := "0101000100100011";	-- STA @291, %r0    #Inicializa display HEX3 com valor 0
tmp(102) := "0001000000001110";	-- LDA %r0, @14     #Carrega o valor dos segundos em r0
tmp(103) := "0101000100100100";	-- STA @292, %r0    #Inicializa display HEX4 com valor 0
tmp(104) := "0001000000001111";	-- LDA %r0, @15     #Carrega o valor dos segundos em r0
tmp(105) := "0101000100100101";	-- STA @293, %r0    #Inicializa display HEX5 com valor 0
tmp(106) := "0110000000110010";	-- JMP $FIM_INCREMENTO

-- Aciona a flag, indicando max dezena hora
tmp(107) := "0001000000000001";	-- LDA %r0, @1     # acendo led da flag
tmp(108) := "0101000100000010";	-- STA @258, %r0
tmp(109) := "0100110000000001";	-- LDI %r6, $1
tmp(110) := "0101110000000111";	-- STA @7, %r6     # Guarda 1 na flag ta_tarde
tmp(111) := "0110000001011110";	-- JMP $ESCREVE_DISPLAY

-- Verifica se deu meia-noite
tmp(112) := "0001000000000000";	-- LDA %r0, @0      # apago o led da flag
tmp(113) := "0101000100000010";	-- STA @258, %r0  
tmp(114) := "0001100000001110";	-- LDA %r4, @14     #Carrega o valor de MEM[14] (unidades hora) no r4
tmp(115) := "1000100000010000";	-- CEQ %r4, @16      #Compara as unidades de hora com MEM[4] (constante 4)
tmp(116) := "0111000001110110";	-- JEQ $MEIA_NOITE
tmp(117) := "0110000001011110";	-- JMP $ESCREVE_DISPLAY

tmp(118) := "0001000000000001";	-- LDA %r0, @1      # acendo o led da flag
tmp(119) := "0101000100000011";	-- STA @259, %r0  
tmp(120) := "0100110000000001";	-- LDI %r6, $1
tmp(121) := "0101110000001000";	-- STA @8, %r6     # Guarda 1 na flag meia_noite
tmp(122) := "0110000000110010";	-- JMP $FIM_INCREMENTO

		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;

