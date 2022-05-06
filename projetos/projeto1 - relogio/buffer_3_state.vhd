library IEEE;
use ieee.std_logic_1164.all;

entity buffer_3_state is
	 generic (
		  dataWidth: natural := 8
	 );
    port(
        entrada  : in std_logic_vector(dataWidth-1 downto 0);
        habilita : in std_logic;
        saida    : out std_logic_vector(dataWidth-1 downto 0));
end;

architecture comportamento of buffer_3_state is
begin
    -- A saida esta ativa quando o habilita = 1.
    saida <= entrada when (habilita = '1') else (others => 'Z');
end;