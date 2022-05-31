library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  

entity shift2 is
    generic
    (
        dataWidth : natural := 32
    );
    port
    (
        entrada: in  STD_LOGIC_VECTOR((larguraDados-1) downto 0);
        saida:   out STD_LOGIC_VECTOR((larguraDados-1) downto 0)
    );
end entity;

architecture comportamento of shift2 is
    begin
	 
	 saida(larguraDados-1 downto 0) <= entrada(larguraDados-3 downto 0) & "00" ;
       
end architecture;
