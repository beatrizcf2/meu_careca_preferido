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
tmp(8) := "0100000000000100";	-- LDI %r0, $4
tmp(9) := "0101000000000100";	-- STA @4, %r0      #Armazena o valor de r0 em MEM[4] (constante 4)
tmp(10) := "0100000000000010";	-- LDI %r0, $2
tmp(11) := "0101000000000101";	-- STA @5, %r0      #Armazena o valor de r0 em MEM[5] (constante 2)
tmp(12) := "0100000000000000";	-- LDI %r0, $0
tmp(13) := "0101000000000111";	-- STA @7, %r0       #Armazena o valor de r0 em MEM[7] (flag ta_tarde)
tmp(14) := "0101000000001000";	-- STA @8, %r0       #Armazena o valor de r0 em MEM[8] (flag meia_noite)
tmp(15) := "0100000000000100";	-- LDI %r0, $4
tmp(16) := "0101000000010000";	-- STA @16, %r0      #Armazena o valor de r0 em MEM[16] (constante 4)
tmp(17) := "0100000000000010";	-- LDI %r0, $2
tmp(18) := "0101000000010001";	-- STA @17, %r0      #Armazena o valor de r0 em MEM[17] (constante 2)

tmp(19) := "0100111000000000";	-- LDI %r7, $0       # Inicializa o r7 com 0 para zerar leituras de botoes futuras

-- Inicializa os LEDs
tmp(20) := "0100000000000000";	-- LDI %r0, $0			    #Carrega o acumulador com o valor 0
tmp(21) := "0101000100000001";	-- STA @257, %r0			#Armazena o valor do bit0 do acumulador no LDR8
tmp(22) := "0101000100000010";	-- STA @258, %r0			#Armazena o valor do bit0 do acumulador no LDR9
tmp(23) := "0100000000000001";	-- LDI %r0, $1			    #Carrega o acumulador com o valor 0
tmp(24) := "0101000100000000";	-- STA @256, %r0			#Armazena o valor do bit0 do acumulador no LDR0 ~ LEDR7

-- Inicializa variáveis de tempo (segundos,minutos,horas)
tmp(25) := "0001000000000000";	-- LDA %r0, @0      # apago o led da flag
tmp(26) := "0101000100000011";	-- STA @259, %r0  
tmp(27) := "0100000000000000";	-- LDI %r0, $0 
tmp(28) := "0101000000000111";	-- STA @7, %r0      #Zero a flag ta_tarde
tmp(29) := "0100000000000000";	-- LDI %r0, $0 
tmp(30) := "0101000000001000";	-- STA @8, %r0      #Zero a flag meia_noite
tmp(31) := "0101000000001010";	-- STA @10, %r0     #Armazena o valor de r0 em MEM[10] (unidades segundo)
tmp(32) := "0101000000001011";	-- STA @11, %r0     #Armazena o valor de r1 em MEM[11] (dezenas segundo)
tmp(33) := "0101000000001100";	-- STA @12, %r0     #Armazena o valor de r2 em MEM[12] (unidades minuto)
tmp(34) := "0101000000001101";	-- STA @13, %r0     #Armazena o valor de r3 em MEM[13] (dezenas minuto)
tmp(35) := "0101000000001110";	-- STA @14, %r0     #Armazena o valor de r4 em MEM[14] (unidades hora)
tmp(36) := "0101000000001111";	-- STA @15, %r0     #Armazena o valor de r5 em MEM[15] (dezenas hora)

-- Inicializa os displays
tmp(37) := "0100000000000000";	-- LDI %r0, $0 
tmp(38) := "0101000100100000";	-- STA @288, %r0    #Inicializa display HEX0 com valor 0
tmp(39) := "0101000100100001";	-- STA @289, %r0    #Inicializa display HEX1 com valor 0
tmp(40) := "0101000100100010";	-- STA @290, %r0    #Inicializa display HEX2 com valor 0
tmp(41) := "0101000100100011";	-- STA @291, %r0    #Inicializa display HEX3 com valor 0
tmp(42) := "0101000100100100";	-- STA @292, %r0    #Inicializa display HEX4 com valor 0
tmp(43) := "0101000100100101";	-- STA @293, %r0    #Inicializa display HEX5 com valor 0

-- Inicializa os LEDs

-- Verifica se deu meia-noite
tmp(44) := "0001000000001000";	-- LDA %r0, @8      #Carrega flag meia-noite
tmp(45) := "1000000000000001";	-- CEQ %r0, @1      #Compara flag com MEM[1] (constante 1)
tmp(46) := "0111000000011001";	-- JEQ $INICIO      # Se for meia-noite, zero tudo

-- Verifica se deu um segundo
tmp(47) := "0001001101000011";	-- LDA %r1, @323	 #Carrega o r1 com a base de tempo
tmp(48) := "1000001000000000";	-- CEQ %r1, @0		 #Compara com o valor de MEM[0] (constante 0)
tmp(49) := "0111000000110100";	-- JEQ $VERIFICA_KEY0		 #Desvia para verificar key0 se igual a 0 (ainda nao deu um segundo) 
tmp(50) := "1001000000111010";	-- JSR $INCREMENTO  #Passou um segundo, chama a sub-rotina de incremento 
tmp(51) := "0000000000000000";	-- NOP			     #  NOP

-- Verifica se key0 foi pressionado
tmp(52) := "0001001101100000";	-- LDA %r1, @352	        #Carrega o r1 com o valor de KEY0
tmp(53) := "1000001000000000";	-- CEQ %r1, @0		        #Compara com o valor de MEM[0] (constante 0)
tmp(54) := "0111000000101100";	-- JEQ $LOOP_PRINCIPAL		#Desvia se igual a 0 (botão não foi pressionado)
tmp(55) := "1001000010001010";	-- JSR $MUDANCA_BASE       #Passou um segundo, chama a sub-rotina de mudanca de base de tempo
tmp(56) := "0000000000000000";	-- NOP			            #  NOP
tmp(57) := "0110000000101100";	-- JMP $LOOP_PRINCIPAL     #Fecha o laço principal, faz uma nova leitura de KEY0

-- Sub-rotina de incremento ----------------------------------------------
tmp(58) := "0101111111111011";	-- STA @507, %r7	 #Limpa a leitura do da base de tempo
tmp(59) := "0001000000001010";	-- LDA %r0, @10     #Carrega o valor de MEM[10] (unidades segundo) no r0
tmp(60) := "0010000000000001";	-- SOMA %r0, @1     #Soma o r0 com o valor de MEM[1] (constante 1)
tmp(61) := "0101000000001010";	-- STA @10, %r0     #Salva o incremento em MEM[10] (unidades segundo)
tmp(62) := "1000000000000010";	-- CEQ %r0, @2      #Compara as unidades de segundo com MEM[2] (constante 10)
tmp(63) := "0111000001000010";	-- JEQ $SEGUNDO_DEZENA #Caso o valor das unidades venha a ser igual a 10, pula para dezenas
tmp(64) := "0110000001101101";	-- JMP $ESCREVE_DISPLAY
tmp(65) := "1010000000000000";	-- RET


tmp(66) := "0001000000000000";	-- LDA %r0, @0      #Carrega o valor de MEM[0] (constante zero) no r0
tmp(67) := "0101000000001010";	-- STA @10, %r0     # Zero as unidades dos segundos
tmp(68) := "0001001000001011";	-- LDA %r1, @11     #Carrega o valor de MEM[11] (dezenas segundo) no r1
tmp(69) := "0010001000000001";	-- SOMA %r1, @1     #Soma o r0 com o valor de MEM[1] (constante 1)
tmp(70) := "0101001000001011";	-- STA @11, %r1     #Salva o incremento em MEM[11] (dezenas segundo)
tmp(71) := "1000001000000011";	-- CEQ %r1, @3      #Compara as unidades de segundo com MEM[3] (constante 6)
tmp(72) := "0111000001001010";	-- JEQ $MINUTO_UNIDADE
tmp(73) := "0110000001101101";	-- JMP $ESCREVE_DISPLAY

tmp(74) := "0001001000000000";	-- LDA %r1, @0      #Carrega o valor de MEM[0] (constante zero) no r0
tmp(75) := "0101001000001011";	-- STA @11, %r1     # Zero as unidades dos segundos
tmp(76) := "0001010000001100";	-- LDA %r2, @12     #Carrega o valor de MEM[12] (unidades minuto) no r2
tmp(77) := "0010010000000001";	-- SOMA %r2, @1     #Soma o r2 com o valor de MEM[1] (constante 1)
tmp(78) := "0101010000001100";	-- STA @12, %r2     #Salva o incremento em MEM[12] (unidades minuto)
tmp(79) := "1000010000000010";	-- CEQ %r2, @2      #Compara as unidades de minuto com MEM[2] (constante 10)
tmp(80) := "0111000001010010";	-- JEQ $MINUTO_DEZENA #Caso o valor das unidades venha a ser igual a 10, pula para dezenas
tmp(81) := "0110000001101101";	-- JMP $ESCREVE_DISPLAY

tmp(82) := "0001010000000000";	-- LDA %r2, @0      #Carrega o valor de MEM[0] (constante zero) no r0
tmp(83) := "0101010000001100";	-- STA @12, %r2     # Zero as unidades dos segundos
tmp(84) := "0001011000001101";	-- LDA %r3, @13     #Carrega o valor de MEM[13] (dezenas minuto) no r3
tmp(85) := "0010011000000001";	-- SOMA %r3, @1     #Soma o r0 com o valor de MEM[1] (constante 1)
tmp(86) := "0101011000001101";	-- STA @13, %r3     #Salva o incremento em MEM[13] (dezenas minuto)
tmp(87) := "1000011000000011";	-- CEQ %r3, @3      #Compara as unidades de minuto com MEM[3] (constante 6)
tmp(88) := "0111000001011010";	-- JEQ $HORA_UNIDADE
tmp(89) := "0110000001101101";	-- JMP $ESCREVE_DISPLAY

tmp(90) := "0001011000000000";	-- LDA %r3, @0      #Carrega o valor de MEM[0] (constante zero) no r3
tmp(91) := "0101011000001101";	-- STA @13, %r3     # Zero as unidades dos segundos
tmp(92) := "0001100000001110";	-- LDA %r4, @14     #Carrega o valor de MEM[14] (unidades hora) no r4
tmp(93) := "0010100000000001";	-- SOMA %r4, @1     #Soma o r4 com o valor de MEM[1] (constante 1)
tmp(94) := "0101100000001110";	-- STA @14, %r4     #Salva o incremento em MEM[14] (unidades hora)
tmp(95) := "1000100000000010";	-- CEQ %r4, @2      #Compara as unidades de hora com MEM[2] (constante 10)
tmp(96) := "0111000001100101";	-- JEQ $HORA_DEZENA #Caso o valor das unidades venha a ser igual a 10, pula para dezenas
tmp(97) := "0001110000000111";	-- LDA %r6, @7      #Carrega o valor de MEM[7] (flag ta_tarde) no r6
tmp(98) := "1000110000000001";	-- CEQ %r6, @1      # Verifica se flag ta_tarde é um
tmp(99) := "0111000001111111";	-- JEQ $TA_TARDE    # pula para verificacao do valor de unidade de hora max (2 ou 4)
tmp(100) := "0110000001101101";	-- JMP $ESCREVE_DISPLAY

tmp(101) := "0001100000000000";	-- LDA %r4, @0      #Carrega o valor de MEM[0] (constante zero) no r0
tmp(102) := "0101100000001110";	-- STA @14, %r4     # Zero as unidades dos segundos
tmp(103) := "0001101000001111";	-- LDA %r5, @15     #Carrega o valor de MEM[15] (dezenas minuto) no r5
tmp(104) := "0010101000000001";	-- SOMA %r5, @1     #Soma o r0 com o valor de MEM[1] (constante 1)
tmp(105) := "0101101000001111";	-- STA @15, %r5     #Salva o incremento em MEM[15] (dezenas minuto)
tmp(106) := "1000101000010001";	-- CEQ %r5, @17      #Compara as dezenas da hora com MEM[17] (2 ou 1)
tmp(107) := "0111000001111010";	-- JEQ $SETA_FLAG
tmp(108) := "0110000001101101";	-- JMP $ESCREVE_DISPLAY

tmp(109) := "0001000000001010";	-- LDA %r0, @10     #Carrega o valor dos segundos em r0
tmp(110) := "0101000100100000";	-- STA @288, %r0    #Inicializa display HEX0 com valor 0
tmp(111) := "0001000000001011";	-- LDA %r0, @11
tmp(112) := "0101000100100001";	-- STA @289, %r0    #Inicializa display HEX1 com valor 0
tmp(113) := "0001000000001100";	-- LDA %r0, @12     #Carrega o valor dos segundos em r0
tmp(114) := "0101010100100010";	-- STA @290, %r2    #Inicializa display HEX2 com valor 0
tmp(115) := "0001000000001101";	-- LDA %r0, @13     #Carrega o valor dos segundos em r0
tmp(116) := "0101000100100011";	-- STA @291, %r0    #Inicializa display HEX3 com valor 0
tmp(117) := "0001000000001110";	-- LDA %r0, @14     #Carrega o valor dos segundos em r0
tmp(118) := "0101000100100100";	-- STA @292, %r0    #Inicializa display HEX4 com valor 0
tmp(119) := "0001000000001111";	-- LDA %r0, @15     #Carrega o valor dos segundos em r0
tmp(120) := "0101000100100101";	-- STA @293, %r0    #Inicializa display HEX5 com valor 0
tmp(121) := "0110000001000001";	-- JMP $FIM_INCREMENTO

-- Aciona a flag, indicando max dezena hora
tmp(122) := "0001000000000001";	-- LDA %r0, @1     # acendo led da flag
tmp(123) := "0101000100000010";	-- STA @258, %r0
tmp(124) := "0100110000000001";	-- LDI %r6, $1
tmp(125) := "0101110000000111";	-- STA @7, %r6     # Guarda 1 na flag ta_tarde
tmp(126) := "0110000001101101";	-- JMP $ESCREVE_DISPLAY

-- Verifica se deu meia-noite
tmp(127) := "0001000000000000";	-- LDA %r0, @0      # apago o led da flag
tmp(128) := "0101000100000010";	-- STA @258, %r0  
tmp(129) := "0001100000001110";	-- LDA %r4, @14     #Carrega o valor de MEM[14] (unidades hora) no r4
tmp(130) := "1000100000010000";	-- CEQ %r4, @16      #Compara as unidades de hora com MEM[4] (constante 4)
tmp(131) := "0111000010000101";	-- JEQ $MEIA_NOITE
tmp(132) := "0110000001101101";	-- JMP $ESCREVE_DISPLAY

tmp(133) := "0001000000000001";	-- LDA %r0, @1      # acendo o led da flag
tmp(134) := "0101000100000011";	-- STA @259, %r0  
tmp(135) := "0100110000000001";	-- LDI %r6, $1
tmp(136) := "0101110000001000";	-- STA @8, %r6     # Guarda 1 na flag meia_noite
tmp(137) := "0110000001000001";	-- JMP $FIM_INCREMENTO
-- ------------------------------------------------------------------------

-- Sub-rotina de mudanca de base (12-24) ----------------------------------
tmp(138) := "0101111111111111";	-- STA @511, %r7   # Limpa leitura botao
tmp(139) := "0001000000000000";	-- LDA %r0, @0     # Carrega constante 0
tmp(140) := "0101000100000000";	-- STA @256, %r0   # Apaga led
tmp(141) := "0001000000010001";	-- LDA %r0, @17    # Carrega a variavel de dezena de hora max no r0
tmp(142) := "1000000000000101";	-- CEQ %r0, @5     # Compara valor da variavel com dois
tmp(143) := "0111000010010010";	-- JEQ $TO_12      # Se for igual a dois, muda de 24 para 12
tmp(144) := "0110000010011001";	-- JMP $TO_24      # Se nao, muda de 12 para 24
tmp(145) := "1010000000000000";	-- RET

tmp(146) := "0001000000000101";	-- LDA %r0, @5             # carrega constante 2
tmp(147) := "0101000100000000";	-- STA @256, %r0
tmp(148) := "0001001000000001";	-- LDA %r1, @1             # Carrega um no registrador
tmp(149) := "0101001000010001";	-- STA @17, %r1            # Muda a variavel de dezena de hora para um
tmp(150) := "0001001000000101";	-- LDA %r1, @5             # Carrega dois no registrador
tmp(151) := "0101001000010000";	-- STA @16, %r1            # Muda a variavel de unidade de hora para dois
tmp(152) := "0110000010010001";	-- JMP $FIM_MUDANCA_BASE   # Volta para o fim da mudanca de base, para retornar da sub-rotina

tmp(153) := "0001000000000001";	-- LDA %r0, @1             # Carrega constante 1
tmp(154) := "0101000100000000";	-- STA @256, %r0
tmp(155) := "0001001000000101";	-- LDA %r1, @5             # Carrega dois no registrador
tmp(156) := "0101001000010001";	-- STA @17, %r1            # Muda a variavel de dezena de hora para um
tmp(157) := "0001001000000100";	-- LDA %r1, @4             # Carrega quatro no registrador
tmp(158) := "0101001000010000";	-- STA @16, %r1            # Muda a variavel de unidade de hora para quatro
tmp(159) := "0110000010010001";	-- JMP $FIM_MUDANCA_BASE   # Volta para o fim da mudanca de base, para retornar da sub-rotina
-- ------------------------------------------------------------------------
		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;
