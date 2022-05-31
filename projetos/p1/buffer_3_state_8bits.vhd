library IEEE;
use ieee.std_logic_1164.all;

entity buffer_3_state_8bits is
    port(
        entrada  : in std_logic;
        habilita : in std_logic;
        saida    : out std_logic_vector(7 downto 0));
end;

architecture comportamento of buffer_3_state_8bits is
begin
    -- A saida esta ativa quando o habilita = 1.
    saida <= "0000000" & entrada when (habilita = '1') else "ZZZZZZZZ";
end;