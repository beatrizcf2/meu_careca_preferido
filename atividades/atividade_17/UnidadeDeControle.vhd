library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UnidadeDeControle is

  generic
  (
		larguraDados    : natural    :=    32
	);
  
  -- O port é obrigatório e possui o objeto “signal” implícito.
  port    
  (	
		-- desmembrar em cada ULA
  );
  
end entity;

architecture arquitetura of UnidadeDeControle is      

begin

UC_ULA :  entity work.UnidadeDeControleULA
        port map();
					  
end architecture;