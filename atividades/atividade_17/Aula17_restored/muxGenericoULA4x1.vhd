library ieee;
use ieee.std_logic_1164.all;

entity muxGenericoULA4x1 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8);
  port (
    entrada0_MUX, entrada1_MUX, entrada2_MUX, entrada3_MUX  : in std_logic;
    seletor_MUX : in std_logic_vector(1 downto 0);
    saida_MUX : out std_logic
  );
end entity;

architecture comportamento of muxGenericoULA4x1 is
  begin
    saida_MUX <= entrada3_MUX when (seletor_MUX = "11") else
					  entrada2_MUX when (seletor_MUX = "10") else
					  entrada1_MUX when (seletor_MUX = "01") else 
					  entrada0_MUX;
end architecture;