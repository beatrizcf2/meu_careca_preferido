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
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
        tmp(0)  := LDI & '0' & "00000001";   -- Carrega o acumulador com o valor 1 
        tmp(1)  := STA & '0' & "00000000";   -- Armazena o valor do acumulador na posição zero da memória (MEM[0])
        tmp(2)  := SUM & '0' & "00000000";   -- Soma o valor atual do acumulador com o conteúdo de MEM[0]
        tmp(3)  := STA & '0' & "00000001";   -- Armazena o valor do acumulador em MEM[1]
        tmp(4)  := LDA & '0' & "00000000";   -- Carrega o acumulador com o valor de MEM[0]
        tmp(5)  := STA & '1' & "00000001";   -- Armazena 1 no LEDR8
        tmp(6)  := STA & '1' & "00000010";   -- Armazena 1 no LEDR9
        tmp(7)  := LDI & '0' & "01010101";   -- Carrega o acumulador
        tmp(8)  := STA & '1' & "00000000";   -- Armazena 85 em LEDR0 até LEDR7
        tmp(9)  := LDI & '0' & "10101010";   -- Carrega o acumulador
        tmp(10) := STA & '1' & "00000000";   -- Armazena 170 em LEDR0 até LEDR7
        tmp(11) := JMP & '0' & "00001011";   -- Fim. Deve ficar neste laço
		  
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;
