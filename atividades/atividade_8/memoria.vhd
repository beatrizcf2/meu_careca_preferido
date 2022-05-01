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
-------------------------------------------
--CODIGO ASSEMBLY
-------------------------------------------

-- SETUP ---------------------------------
-- Inicializando os displays
tmp(0) := "0100000000000";	-- LDI $0			    #Carrega o acumulador com o valor 0
tmp(1) := "0101100100000";	-- STA @288			#Armazena o valor do acumulador em HEX0
tmp(2) := "0101100100001";	-- STA @289			#Armazena o valor do acumulador em HEX1
tmp(3) := "0101100100010";	-- STA @290			#Armazena o valor do acumulador em HEX2
tmp(4) := "0101100100011";	-- STA @291			#Armazena o valor do acumulador em HEX3
tmp(5) := "0101100100100";	-- STA @292			#Armazena o valor do acumulador em HEX4
tmp(6) := "0101100100101";	-- STA @293			#Armazena o valor do acumulador em HEX5

-- inicializando os leds
tmp(7) := "0100000000000";	-- LDI $0			    #Carrega o acumulador com o valor 0
tmp(8) := "0101100000000";	-- STA @256			#Armazena o valor do bit0 do acumulador no LDR0 ~ LEDR7
tmp(9) := "0101100000001";	-- STA @257			#Armazena o valor do bit0 do acumulador no LDR8
tmp(10) := "0101100000010";	-- STA @258			#Armazena o valor do bit0 do acumulador no LDR9

--inicializando os enderecos de memoria
tmp(11) := "0100000000000";	-- LDI $0			    #Carrega o acumulador com o valor 0
tmp(12) := "0101000000000";	-- STA @0			    #Armazena o valor do acumulador em MEM[0] (unidades)
tmp(13) := "0101000000001";	-- STA @1			    #Armazena o valor do acumulador em MEM[1] (dezenas)
tmp(14) := "0101000000010";	-- STA @2			    #Armazena o valor do acumulador em MEM[2] (centenas)
tmp(15) := "0101000000011";	-- STA @3			    #Armazena o valor do acumulador em MEM[3] (limite unidades)
tmp(16) := "0101000000100";	-- STA @4			    #Armazena o valor do acumulador em MEM[4] (limite dezenas)
tmp(17) := "0101000000101";	-- STA @5			    #Armazena o valor do acumulador em MEM[5] (limite centenas)
tmp(18) := "0101000000110";	-- STA @6			    #Armazena o valor do acumulador em MEM[6] (flag inibir contagem)

-- inicializando as variaveiss necessarias
tmp(19) := "0100000000000";	-- LDI $0			    #Carrega o acumulador com o valor 0
tmp(20) := "0101000001010";	-- STA @10             #Armazena o valor zero em MEM[10], para poder fazer comparações;

tmp(21) := "0100000000001";	-- LDI $1			    #Carrega o acumulador com o valor 1
tmp(22) := "0101000001011";	-- STA @11             #Armazena o valor um em MEM[11], para fazer incrementos;

tmp(23) := "0100000001010";	-- LDI $10			    #Carrega o acumulador com o valor 10
tmp(24) := "0101000001100";	-- STA @12             #Armazena o valor dez em MEM[12], para poder fazer comparações que definem o limite da faixa a ser exibida no display.

-- LOOP PRINCIPAL -----------------------

-- VERIFICA KEY 0
tmp(25) := "0001101100000";	-- LDA @352              #Ler o botão de incremento de contagem (KEY0) e armazena no acumulador
tmp(26) := "1000000001010";	-- CEQ @10               #Compara o valor zero (na MEM[10]) com o valor do KEY0 
tmp(27) := "0111000011110";	-- JEQ @KEY1            #Caso nao tenha sido pressionado, desviar para leitura do prox botao.
tmp(28) := "1001000100110";	-- JSR @INCREMENTO      #pula para a subrotina INCREMENTO caso tenha sido pressionado
tmp(29) := "1001001000010";	-- JSR @ESCREVEDISPLAY  #Escrever os valores das variáveis nos respectivos displays (pode ser uma sub-rotina).

-- VERIFICA KEY1
tmp(30) := "0001101100001";	-- LDA @353              #Ler o botão de configuração do limite de incremento (KEY1):
tmp(31) := "1000000001010";	-- CEQ @10               #Compara o valor zero (na MEM[10]) com o valor do KEY0 
tmp(32) := "0111000100010";	-- JEQ @FPGA_RESET      #Caso nao tenha sido pressionado, desviar para o prox botao
tmp(33) := "1001001000111";	-- JSR @CONFIGURACAO    #pula para a subrotina CONFIGURACAO caso tenha sido pressionado

-- VERIFICA FPGA_RESET
tmp(34) := "0001101100100";	-- LDA @356            #Ler o botão de reiniciar contagem (FPGA_RESET) e armazena no acumulador
tmp(35) := "1000000001010";	-- CEQ @10             #Compara o valor zero (na MEM[10]) com o valor do FPGA_RESET
tmp(36) := "0111000011001";	-- JEQ @INICIO        #Caso NAO tenha sido pressionado, desviar para INICIO
tmp(37) := "1001001001010";	-- JSR @RESET            #pula para a subrotina RESET caso tenha sido pressionado, para reiniciar contagem

-- FIM LOOP PRINCIPAL ---------------------

-- SUBROTINAS -----------------------------

tmp(38) := "0001000001010";	-- LDA @10             #Carrega 0 no acumulador
tmp(39) := "1000000000110";	-- CEQ @6              # verifica se a flag de inibir contagem esta setada
tmp(40) := "0111000101010";	-- JEQ @UNIDADES      # pula para iniciar o incremento nas unidades
tmp(41) := "1010000000000";	-- RET                 #Caso esteja setado, deve retornar da sub-rotina.

tmp(42) := "0001000001011";	-- LDA @11             #Carrega 1 no acumulador
tmp(43) := "0010000000000";	-- SOMA @0             #Soma o valor do acumulador com o valor de unidades da contagem
--CEQ @12             --JEQ @DEZENAS       tmp(44) := "0101000000000";	-- STA @0              #Guarda o valor do acumulador (unidades incrementado) de volta em MEM[0]
tmp(45) := "1010000000000";	-- RET

tmp(46) := "0001000001010";	-- LDA @10             # Carregaa 0 no acumulador
tmp(47) := "0101000000000";	-- STA @0              # Carrega 0 em MEM[0] (unidades), para zerar
tmp(48) := "0001000001011";	-- LDA @11             #Carrega 1 no acumulador
tmp(49) := "0010000000001";	-- SOMA @1             #Soma o valor do acumulador com o valor de dezenas da contagem
tmp(50) := "1000000001100";	-- CEQ @12             # Compara o valor do acumulador com MEM[12] (valor 10)
tmp(51) := "0111000110110";	-- JEQ @CENTENAS      # Se for igual pula para verificacao centenas
tmp(52) := "0101000000001";	-- STA @1              # Guarda o valor do acumulador (unidades incrementado) de volta em MEM[0]
tmp(53) := "1010000000000";	-- RET

tmp(54) := "0001000001010";	-- LDA @10             # Carrega 0 no acumulador
tmp(55) := "0101000000001";	-- STA @1              # Carrega 0 em MEM[0] (dezenas), para zerar
tmp(56) := "0001000001011";	-- LDA @11             # Carrega 1 no acumulador
tmp(57) := "0010000000010";	-- SOMA @2             # Soma o valor do acumulador com o valor de centenas da contagem
tmp(58) := "1000000001100";	-- CEQ @12             # Compara o valor do acumulador com MEM[12] (valor 10)
tmp(59) := "0111000111110";	-- JEQ @OVERFLOW      # Se for igual pula para indicar overflow
tmp(60) := "0101000000010";	-- STA @2              #Guarda o valor do acumulador (unidades incrementado) de volta em MEM[0]
tmp(61) := "1010000000000";	-- RET

tmp(62) := "0001000001010";	-- LDA @10             # Carrega 0 no acumulador para acender o LED de overflow
tmp(63) := "0101100000001";	-- STA @257            # Acende o LED de overflow
tmp(64) := "0001000001011";	-- LDA @11             # Carrega 1 no acumulador para setar a flag de inibir contagem 
tmp(65) := "1010000000000";	-- RET                 # Sai do incremento

tmp(66) := "0001000001011";	-- LDA @11            # Carrega 1 no acumulador
tmp(67) := "0101100000001";	-- STA @257			#Armazena o valor do bit0 do acumulador no LDR8
tmp(68) := "0001000000000";	-- LDA @0              # Carrega o valor das unidades no acumulador
tmp(69) := "0101100100000";	-- STA @288            # Armazena o valor do acumulador em HEX0
--LDA @1              --STA @289            --LDA @2              --STA @290            tmp(70) := "1010000000000";	-- RET			        # Retorna da sub-rotina

--testando ligar o led ao apertar o key1
tmp(71) := "0001000001011";	-- LDA @11            # Carrega 1 no acumulador
tmp(72) := "0101100000001";	-- STA @257			#Armazena o valor do bit0 do acumulador no LDR8
tmp(73) := "1010000000000";	-- RET

tmp(74) := "0100000000000";	-- LDI $0			    #Carrega o acumulador com o valor 0
tmp(75) := "0101000000000";	-- STA @0			    #Armazena o valor do acumulador em MEM[0] (unidades)
tmp(76) := "0101000000001";	-- STA @1			    #Armazena o valor do acumulador em MEM[1] (dezenas)
tmp(77) := "0101000000010";	-- STA @2			    #Armazena o valor do acumulador em MEM[2] (centenas)
tmp(78) := "0101100000001";	-- STA @257            #Desliga o LED overflow
tmp(79) := "0101000000110";	-- STA @6              #Seta a flag de inibir contagem para 0
tmp(80) := "1010000000000";	-- RET


		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;

