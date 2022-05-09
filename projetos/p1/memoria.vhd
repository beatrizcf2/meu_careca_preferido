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
tmp(12) := "0100000000000011";	-- LDI %r0, $3
tmp(13) := "0101000000000110";	-- STA @6, %r0      #Armazena o valor de r0 em MEM[5] (constante 3)
tmp(14) := "0100000000000000";	-- LDI %r0, $0
tmp(15) := "0101000000000111";	-- STA @7, %r0       #Armazena o valor de r0 em MEM[7] (flag ta_tarde)
tmp(16) := "0101000000001000";	-- STA @8, %r0       #Armazena o valor de r0 em MEM[8] (flag meia_noite)
tmp(17) := "0100000000000100";	-- LDI %r0, $4
tmp(18) := "0101000000010000";	-- STA @16, %r0      #Armazena o valor de r0 em MEM[16] (constante 4)
tmp(19) := "0100000000000010";	-- LDI %r0, $2
tmp(20) := "0101000000010001";	-- STA @17, %r0      #Armazena o valor de r0 em MEM[17] (constante 2)
tmp(21) := "0100000000000000";	-- LDI %r0, $0
tmp(22) := "0101000000010010";	-- STA @18, %r0      #Armazena o valor de r0 em MEM[18] (variavel campo) 0-seg 1-min 2-hr

tmp(23) := "0100111000000000";	-- LDI %r7, $0       # Inicializa o r7 com 0 para zerar leituras de botoes futuras

-- Inicializa os LEDs
tmp(24) := "0100000000000000";	-- LDI %r0, $0			    #Carrega o acumulador com o valor 0
tmp(25) := "0101000100000001";	-- STA @257, %r0			#Armazena o valor do bit0 do acumulador no LDR8
tmp(26) := "0101000100000010";	-- STA @258, %r0			#Armazena o valor do bit0 do acumulador no LDR9
tmp(27) := "0100000000000001";	-- LDI %r0, $1			    #Carrega o acumulador com o valor 0
tmp(28) := "0101000100000000";	-- STA @256, %r0			#Armazena o valor do bit0 do acumulador no LDR0 ~ LEDR7

-- Inicializa variáveis de tempo (segundos,minutos,horas)
tmp(29) := "0001000000000000";	-- LDA %r0, @0      # apago o led da flag
tmp(30) := "0101000100000011";	-- STA @259, %r0  
tmp(31) := "0100000000000000";	-- LDI %r0, $0 
tmp(32) := "0101000000000111";	-- STA @7, %r0      #Zero a flag ta_tarde
tmp(33) := "0100000000000000";	-- LDI %r0, $0 
tmp(34) := "0101000000001000";	-- STA @8, %r0      #Zero a flag meia_noite
tmp(35) := "0101000000001010";	-- STA @10, %r0     #Armazena o valor de r0 em MEM[10] (unidades segundo)
tmp(36) := "0101000000001011";	-- STA @11, %r0     #Armazena o valor de r1 em MEM[11] (dezenas segundo)
tmp(37) := "0101000000001100";	-- STA @12, %r0     #Armazena o valor de r2 em MEM[12] (unidades minuto)
tmp(38) := "0101000000001101";	-- STA @13, %r0     #Armazena o valor de r3 em MEM[13] (dezenas minuto)
tmp(39) := "0101000000001110";	-- STA @14, %r0     #Armazena o valor de r4 em MEM[14] (unidades hora)
tmp(40) := "0101000000001111";	-- STA @15, %r0     #Armazena o valor de r5 em MEM[15] (dezenas hora)

-- Inicializa os displays
tmp(41) := "0100000000000000";	-- LDI %r0, $0 
tmp(42) := "0101000100100000";	-- STA @288, %r0    #Inicializa display HEX0 com valor 0
tmp(43) := "0101000100100001";	-- STA @289, %r0    #Inicializa display HEX1 com valor 0
tmp(44) := "0101000100100010";	-- STA @290, %r0    #Inicializa display HEX2 com valor 0
tmp(45) := "0101000100100011";	-- STA @291, %r0    #Inicializa display HEX3 com valor 0
tmp(46) := "0101000100100100";	-- STA @292, %r0    #Inicializa display HEX4 com valor 0
tmp(47) := "0101000100100101";	-- STA @293, %r0    #Inicializa display HEX5 com valor 0

-- Inicializa os LEDs

-- Verifica se deu meia-noite
tmp(48) := "0001000000001000";	-- LDA %r0, @8      #Carrega flag meia-noite
tmp(49) := "1000000000000001";	-- CEQ %r0, @1      #Compara flag com MEM[1] (constante 1)
tmp(50) := "0111000000011101";	-- JEQ $INICIO      # Se for meia-noite, zero tudo

-- Verifica se SW[7~0] == 1
tmp(51) := "0001001101000000";	-- LDA %r1, @320                   # Carrega valor SW0~SW7
tmp(52) := "1000001000000001";	-- CEQ %r1, @1                     # Compara com 1
tmp(53) := "0111000000111001";	-- JEQ $CONFIGURACAO_ATIVADA       # Se for 1, verifico a leitura de segundo a partir do a partir do botao
tmp(54) := "0001000000000000";	-- LDA %r0, @0                     # DEBUG Se chave SW0 NAO estiver ativa, apago o led
tmp(55) := "0101000100000001";	-- STA @257, %r0                   # DEBUG
tmp(56) := "0110000001001000";	-- JMP $CONFIGURACAO_DESATIVADA    # Se for qualquer outra coisa, verifico a leitura de segundo a partir do a partir do clk

tmp(57) := "0001000000000001";	-- LDA %r0, @1                     # DEBUG Se chave SW0 estiver ativa, ligo o led
tmp(58) := "0101000100000001";	-- STA @257, %r0                   # DEBUG
tmp(59) := "0110000000111100";	-- JMP $VERIFICA_KEY2              #Pulo para a verificacao do KEY0 (nao pode passar pelo verifica_segundo)  

tmp(60) := "0001001101100010";	-- LDA %r1, @354                   # Carrega valor KEY2
tmp(61) := "1000001000000000";	-- CEQ %r1, @0                     # Compara com 0
tmp(62) := "0111000001000010";	-- JEQ $VERIFICA_KEY3              # Desvia para verificar KEY0 se KEY2 nao foi pressionado
tmp(63) := "1001000001010100";	-- JSR $INCREMENTO_KEY2                 # Desvia para o incremento
tmp(64) := "0000000000000000";	-- NOP			                    # NOP
tmp(65) := "0110000001000010";	-- JMP $VERIFICA_KEY3              # Pulo para a verificacao do KEY0 

tmp(66) := "0001001101100011";	-- LDA %r1, @355                   # Carrega valor KEY3
tmp(67) := "1000001000000000";	-- CEQ %r1, @0                     # Compara com 0
tmp(68) := "0111000001001110";	-- JEQ $VERIFICA_KEY0              # Desvia para verificar KEY0 se KEY3 nao foi pressionado
tmp(69) := "1001000011000000";	-- JSR $SELECIONA_CAMPO            # Desvia para a mudanca de campo 
tmp(70) := "0000000000000000";	-- NOP			                    # NOP
tmp(71) := "0110000001001110";	-- JMP $VERIFICA_KEY0              # Pulo para a verificacao do KEY0 



-- Verifica se deu um segundo
tmp(72) := "0001001101000011";	-- LDA %r1, @323	                #Carrega o r1 com a base de tempo
tmp(73) := "1000001000000000";	-- CEQ %r1, @0		                #Compara com o valor de MEM[0] (constante 0)
tmp(74) := "0111000001001110";	-- JEQ $VERIFICA_KEY0		        #Desvia para verificar key0 se igual a 0 (ainda nao deu um segundo) 
tmp(75) := "1001000001011101";	-- JSR $INCREMENTO_CLK                 #Passou um segundo, chama a sub-rotina de incremento 
tmp(76) := "0000000000000000";	-- NOP			                    #  NOP
tmp(77) := "0110000001001110";	-- JMP $VERIFICA_KEY0              #Pulo para a verificacao do KEY0  



-- Verifica se key0 foi pressionado
tmp(78) := "0001001101100000";	-- LDA %r1, @352	        #Carrega o r1 com o valor de KEY0
tmp(79) := "1000001000000000";	-- CEQ %r1, @0		        #Compara com o valor de MEM[0] (constante 0)
tmp(80) := "0111000000110000";	-- JEQ $LOOP_PRINCIPAL		#Desvia para o inicio do loop se igual a 0 (botão não foi pressionado)
tmp(81) := "1001000010101010";	-- JSR $MUDANCA_BASE       #Passou um segundo, chama a sub-rotina de mudanca de base de tempo
tmp(82) := "0000000000000000";	-- NOP			            #  NOP
tmp(83) := "0110000000110000";	-- JMP $LOOP_PRINCIPAL     # Desvia para o inicio do loop depois da mudanca de

-- Sub-rotina de incremento ----------------------------------------------
tmp(84) := "0101111111111101";	-- STA @509, %r7	 #Limpa a leitura do da base de tempo
tmp(85) := "0001000000010010";	-- LDA %r0, @18
tmp(86) := "1000000000000000";	-- CEQ %r0, @0      # Compara com zero - se for zero pula pra segundo
tmp(87) := "0111000001011111";	-- JEQ $SEGUNDO_UNIDADE
tmp(88) := "1000000000000001";	-- CEQ %r0, @1      # Compara com UM - se for zero pula pra minuto
tmp(89) := "0111000001101110";	-- JEQ $MINUTO_UNIDADE
tmp(90) := "1000000000000101";	-- CEQ %r0, @5      # Compara com DOIS - se for zero pula pra hora
tmp(91) := "0111000001111110";	-- JEQ $HORA_UNIDADE
tmp(92) := "0110000001011111";	-- JMP $SEGUNDO_UNIDADE

tmp(93) := "0101111111111011";	-- STA @507, %r7	 #Limpa a leitura do da base de tempo
tmp(94) := "0110000001011111";	-- JMP $SEGUNDO_UNIDADE



tmp(95) := "0001000000001010";	-- LDA %r0, @10     #Carrega o valor de MEM[10] (unidades segundo) no r0
tmp(96) := "0010000000000001";	-- SOMA %r0, @1     #Soma o r0 com o valor de MEM[1] (constante 1)
tmp(97) := "0101000000001010";	-- STA @10, %r0     #Salva o incremento em MEM[10] (unidades segundo)
tmp(98) := "1000000000000010";	-- CEQ %r0, @2      #Compara as unidades de segundo com MEM[2] (constante 10)
tmp(99) := "0111000001100110";	-- JEQ $SEGUNDO_DEZENA #Caso o valor das unidades venha a ser igual a 10, pula para dezenas
tmp(100) := "0110000010010001";	-- JMP $ESCREVE_DISPLAY
tmp(101) := "1010000000000000";	-- RET


tmp(102) := "0001000000000000";	-- LDA %r0, @0      #Carrega o valor de MEM[0] (constante zero) no r0
tmp(103) := "0101000000001010";	-- STA @10, %r0     # Zero as unidades dos segundos
tmp(104) := "0001001000001011";	-- LDA %r1, @11     #Carrega o valor de MEM[11] (dezenas segundo) no r1
tmp(105) := "0010001000000001";	-- SOMA %r1, @1     #Soma o r0 com o valor de MEM[1] (constante 1)
tmp(106) := "0101001000001011";	-- STA @11, %r1     #Salva o incremento em MEM[11] (dezenas segundo)
tmp(107) := "1000001000000011";	-- CEQ %r1, @3      #Compara as unidades de segundo com MEM[3] (constante 6)
tmp(108) := "0111000001101110";	-- JEQ $MINUTO_UNIDADE
tmp(109) := "0110000010010001";	-- JMP $ESCREVE_DISPLAY

tmp(110) := "0001001000000000";	-- LDA %r1, @0      #Carrega o valor de MEM[0] (constante zero) no r0
tmp(111) := "0101001000001011";	-- STA @11, %r1     # Zero as unidades dos segundos
tmp(112) := "0001010000001100";	-- LDA %r2, @12     #Carrega o valor de MEM[12] (unidades minuto) no r2
tmp(113) := "0010010000000001";	-- SOMA %r2, @1     #Soma o r2 com o valor de MEM[1] (constante 1)
tmp(114) := "0101010000001100";	-- STA @12, %r2     #Salva o incremento em MEM[12] (unidades minuto)
tmp(115) := "1000010000000010";	-- CEQ %r2, @2      #Compara as unidades de minuto com MEM[2] (constante 10)
tmp(116) := "0111000001110110";	-- JEQ $MINUTO_DEZENA #Caso o valor das unidades venha a ser igual a 10, pula para dezenas
tmp(117) := "0110000010010001";	-- JMP $ESCREVE_DISPLAY

tmp(118) := "0001010000000000";	-- LDA %r2, @0      #Carrega o valor de MEM[0] (constante zero) no r0
tmp(119) := "0101010000001100";	-- STA @12, %r2     # Zero as unidades dos segundos
tmp(120) := "0001011000001101";	-- LDA %r3, @13     #Carrega o valor de MEM[13] (dezenas minuto) no r3
tmp(121) := "0010011000000001";	-- SOMA %r3, @1     #Soma o r0 com o valor de MEM[1] (constante 1)
tmp(122) := "0101011000001101";	-- STA @13, %r3     #Salva o incremento em MEM[13] (dezenas minuto)
tmp(123) := "1000011000000011";	-- CEQ %r3, @3      #Compara as unidades de minuto com MEM[3] (constante 6)
tmp(124) := "0111000001111110";	-- JEQ $HORA_UNIDADE
tmp(125) := "0110000010010001";	-- JMP $ESCREVE_DISPLAY

tmp(126) := "0001011000000000";	-- LDA %r3, @0      #Carrega o valor de MEM[0] (constante zero) no r3
tmp(127) := "0101011000001101";	-- STA @13, %r3     # Zero as unidades dos segundos
tmp(128) := "0001100000001110";	-- LDA %r4, @14     #Carrega o valor de MEM[14] (unidades hora) no r4
tmp(129) := "0010100000000001";	-- SOMA %r4, @1     #Soma o r4 com o valor de MEM[1] (constante 1)
tmp(130) := "0101100000001110";	-- STA @14, %r4     #Salva o incremento em MEM[14] (unidades hora)
tmp(131) := "1000100000000010";	-- CEQ %r4, @2      #Compara as unidades de hora com MEM[2] (constante 10)
tmp(132) := "0111000010001001";	-- JEQ $HORA_DEZENA #Caso o valor das unidades venha a ser igual a 10, pula para dezenas
tmp(133) := "0001110000000111";	-- LDA %r6, @7      #Carrega o valor de MEM[7] (flag ta_tarde) no r6
tmp(134) := "1000110000000001";	-- CEQ %r6, @1      # Verifica se flag ta_tarde é um
tmp(135) := "0111000010100001";	-- JEQ $TA_TARDE    # pula para verificacao do valor de unidade de hora max (2 ou 4)
tmp(136) := "0110000010010001";	-- JMP $ESCREVE_DISPLAY

tmp(137) := "0001100000000000";	-- LDA %r4, @0      #Carrega o valor de MEM[0] (constante zero) no r0
tmp(138) := "0101100000001110";	-- STA @14, %r4     # Zero as unidades dos segundos
tmp(139) := "0001101000001111";	-- LDA %r5, @15     #Carrega o valor de MEM[15] (dezenas minuto) no r5
tmp(140) := "0010101000000001";	-- SOMA %r5, @1     #Soma o r0 com o valor de MEM[1] (constante 1)
tmp(141) := "0101101000001111";	-- STA @15, %r5     #Salva o incremento em MEM[15] (dezenas minuto)
tmp(142) := "1000101000010001";	-- CEQ %r5, @17      #Compara as dezenas da hora com MEM[17] (2 ou 1)
tmp(143) := "0111000010011110";	-- JEQ $SETA_FLAG
tmp(144) := "0110000010010001";	-- JMP $ESCREVE_DISPLAY

tmp(145) := "0001000000001010";	-- LDA %r0, @10     #Carrega o valor dos segundos em r0
tmp(146) := "0101000100100000";	-- STA @288, %r0    #Inicializa display HEX0 com valor 0
tmp(147) := "0001000000001011";	-- LDA %r0, @11
tmp(148) := "0101000100100001";	-- STA @289, %r0    #Inicializa display HEX1 com valor 0
tmp(149) := "0001000000001100";	-- LDA %r0, @12     #Carrega o valor dos segundos em r0
tmp(150) := "0101010100100010";	-- STA @290, %r2    #Inicializa display HEX2 com valor 0
tmp(151) := "0001000000001101";	-- LDA %r0, @13     #Carrega o valor dos segundos em r0
tmp(152) := "0101000100100011";	-- STA @291, %r0    #Inicializa display HEX3 com valor 0
tmp(153) := "0001000000001110";	-- LDA %r0, @14     #Carrega o valor dos segundos em r0
tmp(154) := "0101000100100100";	-- STA @292, %r0    #Inicializa display HEX4 com valor 0
tmp(155) := "0001000000001111";	-- LDA %r0, @15     #Carrega o valor dos segundos em r0
tmp(156) := "0101000100100101";	-- STA @293, %r0    #Inicializa display HEX5 com valor 0
tmp(157) := "0110000001100101";	-- JMP $FIM_INCREMENTO

-- Aciona a flag, indicando max dezena hora
--LDA %r0, @1     --STA @258, %r0
tmp(158) := "0100110000000001";	-- LDI %r6, $1
tmp(159) := "0101110000000111";	-- STA @7, %r6     # Guarda 1 na flag ta_tarde
tmp(160) := "0110000010010001";	-- JMP $ESCREVE_DISPLAY

-- Verifica se deu meia-noite
--LDA %r0, @0      --STA @258, %r0  
tmp(161) := "0001100000001110";	-- LDA %r4, @14     #Carrega o valor de MEM[14] (unidades hora) no r4
tmp(162) := "1000100000010000";	-- CEQ %r4, @16      #Compara as unidades de hora com MEM[4] (constante 4)
tmp(163) := "0111000010100101";	-- JEQ $MEIA_NOITE
tmp(164) := "0110000010010001";	-- JMP $ESCREVE_DISPLAY

tmp(165) := "0001000000000001";	-- LDA %r0, @1      # acendo o led da flag
tmp(166) := "0101000100000011";	-- STA @259, %r0  
tmp(167) := "0100110000000001";	-- LDI %r6, $1
tmp(168) := "0101110000001000";	-- STA @8, %r6     # Guarda 1 na flag meia_noite
tmp(169) := "0110000001100101";	-- JMP $FIM_INCREMENTO
-- ------------------------------------------------------------------------

-- Sub-rotina de mudanca de base (12-24) ----------------------------------
tmp(170) := "0101111111111111";	-- STA @511, %r7   # Limpa leitura botao
tmp(171) := "0001000000000000";	-- LDA %r0, @0     # Carrega constante 0
tmp(172) := "0101000100000000";	-- STA @256, %r0   # Apaga led
tmp(173) := "0001000000010001";	-- LDA %r0, @17    # Carrega a variavel de dezena de hora max no r0
tmp(174) := "1000000000000101";	-- CEQ %r0, @5     # Compara valor da variavel com dois
tmp(175) := "0111000010110010";	-- JEQ $TO_12      # Se for igual a dois, muda de 24 para 12
tmp(176) := "0110000010111001";	-- JMP $TO_24      # Se nao, muda de 12 para 24
tmp(177) := "1010000000000000";	-- RET

tmp(178) := "0001000000000101";	-- LDA %r0, @5             # carrega constante 2
tmp(179) := "0101000100000000";	-- STA @256, %r0
tmp(180) := "0001001000000001";	-- LDA %r1, @1             # Carrega um no registrador
tmp(181) := "0101001000010001";	-- STA @17, %r1            # Muda a variavel de dezena de hora para um
tmp(182) := "0001001000000101";	-- LDA %r1, @5             # Carrega dois no registrador
tmp(183) := "0101001000010000";	-- STA @16, %r1            # Muda a variavel de unidade de hora para dois
tmp(184) := "0110000010110001";	-- JMP $FIM_MUDANCA_BASE   # Volta para o fim da mudanca de base, para retornar da sub-rotina

tmp(185) := "0001000000000001";	-- LDA %r0, @1             # Carrega constante 1
tmp(186) := "0101000100000000";	-- STA @256, %r0
tmp(187) := "0001001000000101";	-- LDA %r1, @5             # Carrega dois no registrador
tmp(188) := "0101001000010001";	-- STA @17, %r1            # Muda a variavel de dezena de hora para um
tmp(189) := "0001001000000100";	-- LDA %r1, @4             # Carrega quatro no registrador
tmp(190) := "0101001000010000";	-- STA @16, %r1            # Muda a variavel de unidade de hora para quatro
tmp(191) := "0110000010110001";	-- JMP $FIM_MUDANCA_BASE   # Volta para o fim da mudanca de base, para retornar da sub-rotina
-- ------------------------------------------------------------------------

tmp(192) := "0101111111111100";	-- STA @508, %r7
tmp(193) := "0001000000010010";	-- LDA %r0, @18     # Carrega variavel campo
tmp(194) := "0010000000000001";	-- SOMA %r0, @1
tmp(195) := "0101000000010010";	-- STA @18, %r0
tmp(196) := "1000000000000110";	-- CEQ %r0, @6      # Compara r0 com tres
tmp(197) := "0111000011000111";	-- JEQ $RESETA_CAMPO
tmp(198) := "1010000000000000";	-- RET

tmp(199) := "0001000000000000";	-- LDA %r0, @0        # Carrega zero no registrador
tmp(200) := "0101000000010010";	-- STA @18, %r0       # Carrega zero na MEM[18]
tmp(201) := "1010000000000000";	-- RET

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;

