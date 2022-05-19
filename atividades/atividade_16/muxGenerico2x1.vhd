library ieee;
use ieee.std_logic_1164.all;

entity muxGenerico2x1 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8);
  port (
    entrada0_MUX, entrada1_MUX : in std_logic;
    seletor_MUX : in std_logic;
    saida_MUX : out std_logic
  );
end entity;

architecture comportamento of muxGenerico2x1 is
  begin
    saida_MUX <= entrada1_MUX when (seletor_MUX = '1') else entrada0_MUX;
end architecture;