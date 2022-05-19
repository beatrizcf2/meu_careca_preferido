library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- o codigo abaixo esta incompleto
-- 'e apenas um rascunho

entity ULA_MIPS_32 is

  generic
  (
		larguraDados    : natural  :=    32;
		SLT             : natural  :=    0
	);
  
  -- O port é obrigatório e possui o objeto “signal” implícito.
  port    
  (	
		-- desmembrar em cada ULA
		entradaA           : in  std_logic_vector(larguraDados-1 downto 0);
		entradaB           : in  std_logic_vector(larguraDados-1 downto 0);
		
		-- igual para todas as ULAs
		SelMux_invB        : in  std_logic;
		SelMux             : in  std_logic_vector(1 downto 0);
		
		resultado          : out std_logic_vector(larguraDados-1 downto 0);
		overflow_SLT       : out std_logic
		
  );
  
end entity;

architecture arquitetura of ULA_MIPS_32 is      
		signal carry_out   : std_logic_vector(larguraDados-1 downto 0);
begin

ULA0 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(0),
                 entradaB     => entradaB(0),
                 carry_in     => SelMux_invB,
                 carry_out    => carry_out(0),
					  SelMux_invB  => SelMux_invB,
					  SLT          => overflow_SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(0));
					  
ULA1 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(1),
                 entradaB     => entradaB(1),
                 carry_in     => carry_out(0),
                 carry_out    => carry_out(1),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(1));
					  
					  
ULA31 :  entity work.ULA_MIPS_bit31
        port map(entradaA     => entradaA(31),
                 entradaB     => entradaB(31),
                 carry_in     => carry_out(30),
                 carry_out    => carry_out(31),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(31),
					  overflow     => overflow_SLT);


end architecture;