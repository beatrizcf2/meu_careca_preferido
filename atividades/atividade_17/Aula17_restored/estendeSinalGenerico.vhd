library ieee;
use ieee.std_logic_1164.all;

entity estendeSinalGenerico is
    generic
    (
        larguraDadoEntrada : natural  :=    16;
        larguraDadoSaida   : natural  :=    32
    );
    port
    (
        -- Input ports
        estendeSinal_IN : in  std_logic_vector(larguraDadoEntrada-1 downto 0);
        -- mux
        selOriAndi    : in std_logic;
        -- Output ports
        estendeSinal_OUT: out std_logic_vector(larguraDadoSaida-1 downto 0)
    );
end entity;

architecture comportamento of estendeSinalGenerico is

    signal estendeSinal_MUX : std_logic;
begin

MUX_ULA_MEM :  entity work.muxGenericoULA2x1  generic map (larguraDados => larguraDados)
        port map( 	entradaA_MUX => estendeSinal_IN(larguraDadoEntrada-1),
                    entradaB_MUX =>  '0',
                    seletor_MUX => selOriAndi,
                    saida_MUX => estendeSinal_MUX);

estendeSinal_OUT <= (larguraDadoSaida-1 downto larguraDadoEntrada => estendeSinal_MUX ) & estendeSinal_IN;

end architecture;