library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity or1 is
  -- O generic é onde carrega as constantes padroes
  generic
  (
		larguraDados    : natural  :=    1

  );
  
  -- O port é obrigatório e possui o objeto “signal” implícito.
  port    
  (	
		entradaA           : in  std_logic;
		entradaB           : in  std_logic;
		saida              : out std_logic -- saida para a unidade de controle
  );
  
end entity;

architecture comportamento of or1 is

    begin
        saida <= entradaA OR entradaB;
		  
end architecture;