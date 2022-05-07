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
tmp(0) := "0100001000000000";	-- LDI %r1, $0		#	Carrega o acumulador com o valor 0
tmp(1) := "0101001000000000";	-- STA @0, %r1		#	Armazena o valor do acumulador em MEM[0] (constante 0)
tmp(2) := "0101001000000010";	-- STA @2, %r1		#	Armazena o valor do acumulador em MEM[2] (contador)
tmp(3) := "0100001000000001";	-- LDI %r1, $1		#	Carrega o acumulador com o valor 1
tmp(4) := "0101001000000001";	-- STA @1, %r1		#	Armazena o valor do acumulador em MEM[1] (constante 1)
tmp(5) := "0000000000000000";	-- NOP			
tmp(6) := "0001001101100000";	-- LDA %r1, @352	#	Carrega o acumulador com a leitura do botão KEY0
tmp(7) := "1000001000000000";	-- CEQ %r1, @0		#	Compara com o valor de MEM[0] (constante 0)
tmp(8) := "0111000000001010";	-- JEQ @10		#	Desvia se igual a 0 (botão não foi pressionado)
tmp(9) := "1001000000100010";	-- JSR $LABEL	#	O botão foi pressionado, chama a sub-rotina de incremento
tmp(10) := "0000000000000000";	-- NOP			#   NOP
tmp(11) := "0110000000000101";	-- JMP @5		#	Fecha o laço principal, faz uma nova leitura de KEY0
tmp(12) := "0000000000000000";	-- NOP				
tmp(13) := "0000000000000000";	-- NOP				
tmp(14) := "0000000000000000";	-- NOP				
tmp(15) := "0000000000000000";	-- NOP				
tmp(16) := "0000000000000000";	-- NOP				
tmp(17) := "0000000000000000";	-- NOP				
tmp(18) := "0000000000000000";	-- NOP				
tmp(19) := "0000000000000000";	-- NOP				
tmp(20) := "0000000000000000";	-- NOP				
tmp(21) := "0000000000000000";	-- NOP				
tmp(22) := "0000000000000000";	-- NOP				
tmp(23) := "0000000000000000";	-- NOP				
tmp(24) := "0000000000000000";	-- NOP				
tmp(25) := "0000000000000000";	-- NOP				
tmp(26) := "0000000000000000";	-- NOP				
tmp(27) := "0000000000000000";	-- NOP				
tmp(28) := "0000000000000000";	-- NOP				
tmp(29) := "0000000000000000";	-- NOP				
tmp(30) := "0000000000000000";	-- NOP				
tmp(31) := "0000000000000000";	-- NOP				
tmp(32) := "0000000000000000";	-- NOP				
tmp(33) := "0000000000000000";	-- NOP				
tmp(34) := "0101001111111111";	-- STA @511, %r1	#	Limpa a leitura do botão
tmp(35) := "0001001000000010";	-- LDA %r1, @2		    #	Carrega o valor de MEM[2] (contador)
tmp(36) := "0010001000000001";	-- SOMA %r1, @1		    #	Soma com a constante em MEM[1]
tmp(37) := "0101001000000010";	-- STA @2, %r1		#	Salva o incremento em MEM[2] (contador)
tmp(38) := "0101001100000010";	-- STA @258, %r1	#   Armazena o valor do bit0 do acumulador no LDR9
tmp(39) := "1010000000000000";	-- RET			    #   Retorna da sub-rotina










		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;

