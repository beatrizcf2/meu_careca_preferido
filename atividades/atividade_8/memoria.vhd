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
-- Inicializacao das variaveis
tmp(0) := "0101111111111";	-- STA @511        #Limpa
tmp(1) := "0100000000000";	-- LDI $0			#Carrega o acumulador com o valor 0
tmp(2) := "0101100100000";	-- STA @288		#Armazena o valor do ACUMULADOR NO HEX1
tmp(3) := "0101000000000";	-- STA @0			#Armazena o valor do acumulador em MEM[0] (constante 0)
tmp(4) := "0101000000010";	-- STA @2			#Armazena o valor do acumulador em MEM[2] (contador)
tmp(5) := "0100000000001";	-- LDI $1			#Carrega o acumulador com o valor 1
tmp(6) := "0101000000001";	-- STA @1			#Armazena o valor do acumulador em MEM[1] (constante 1)

tmp(7) := "0001101100000";	-- LDA @352		#Carrega o acumulador com a leitura do botão KEY0
tmp(8) := "1000000000000";	-- CEQ @0			#Compara com o valor de MEM[0] (constante 0)
tmp(9) := "0111000000111";	-- JEQ @KEY0			#Desvia se igual a 0 (botão não foi pressionado)
tmp(10) := "1001000001110";	-- JSR @INCREMENTO #O botão foi pressionado, chama a sub-rotina de INCREMENTO
tmp(11) := "0100000001010";	-- LDI $10
tmp(12) := "0101100000000";	-- STA @256
tmp(13) := "0110000000111";	-- JMP @KEY0		#Fecha o laço principal, faz uma nova leitura de KEY0


tmp(14) := "0101111111111";	-- STA @511		#Limpa a leitura do botão
tmp(15) := "0001000000010";	-- LDA @2			#Carrega o valor de MEM[2] (contador)
tmp(16) := "0010000000001";	-- SOMA @1			#Soma com a constante em MEM[1]
tmp(17) := "0101000000010";	-- STA @2			#Salva o incremento em MEM[2] (contador)
tmp(18) := "0101100100000";	-- STA @288		#Armazena o valor do ACUMULADOR NO HEX1
tmp(19) := "0101100000010";	-- STA @258
tmp(20) := "1010000000000";	-- RET			    #Retorna da sub-rotina



		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;

