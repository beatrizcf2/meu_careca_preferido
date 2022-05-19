library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

-- o codigo abaixo esta incompleto
-- 'e apenas um rascunho

entity ULA_MIPS_32 is

  generic
  (
		larguraDados    : natural  :=    32;
		SLT             : std_logic  :=    '0'
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
		
		resultado          : out std_logic_vector(larguraDados-1 downto 0)
  );
  
end entity;

architecture arquitetura of ULA_MIPS_32 is      
		signal carry_out          : std_logic_vector(larguraDados-1 downto 0);
		signal overflow_SLT       : std_logic;
		signal Zero               : std_logic;
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

ULA2 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(2),
                 entradaB     => entradaB(2),
                 carry_in     => carry_out(1),
                 carry_out    => carry_out(2),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(2));

ULA3 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(3),
                 entradaB     => entradaB(3),
                 carry_in     => carry_out(2),
                 carry_out    => carry_out(3),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(3));

ULA4 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(4),
                 entradaB     => entradaB(4),
                 carry_in     => carry_out(3),
                 carry_out    => carry_out(4),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(4));

ULA5 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(5),
                 entradaB     => entradaB(5),
                 carry_in     => carry_out(4),
                 carry_out    => carry_out(5),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(5));

ULA6 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(6),
                 entradaB     => entradaB(6),
                 carry_in     => carry_out(5),
                 carry_out    => carry_out(6),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(6));

ULA7 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(7),
                 entradaB     => entradaB(7),
                 carry_in     => carry_out(6),
                 carry_out    => carry_out(7),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(7));

ULA8 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(8),
                 entradaB     => entradaB(8),
                 carry_in     => carry_out(7),
                 carry_out    => carry_out(8),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(8));

ULA9 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(9),
                 entradaB     => entradaB(9),
                 carry_in     => carry_out(8),
                 carry_out    => carry_out(9),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(9));

ULA10 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(10),
                 entradaB     => entradaB(10),
                 carry_in     => carry_out(9),
                 carry_out    => carry_out(10),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(10));

ULA11 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(11),
                 entradaB     => entradaB(11),
                 carry_in     => carry_out(10),
                 carry_out    => carry_out(11),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(11));

ULA12 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(12),
                 entradaB     => entradaB(12),
                 carry_in     => carry_out(11),
                 carry_out    => carry_out(12),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(12));

ULA13 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(13),
                 entradaB     => entradaB(13),
                 carry_in     => carry_out(12),
                 carry_out    => carry_out(13),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(13));

ULA14 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(14),
                 entradaB     => entradaB(14),
                 carry_in     => carry_out(13),
                 carry_out    => carry_out(14),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(14));

ULA15 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(15),
                 entradaB     => entradaB(15),
                 carry_in     => carry_out(14),
                 carry_out    => carry_out(15),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(15));

ULA16 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(16),
                 entradaB     => entradaB(16),
                 carry_in     => carry_out(15),
                 carry_out    => carry_out(16),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(16));

ULA17 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(17),
                 entradaB     => entradaB(17),
                 carry_in     => carry_out(16),
                 carry_out    => carry_out(17),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(17));

ULA18 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(18),
                 entradaB     => entradaB(18),
                 carry_in     => carry_out(17),
                 carry_out    => carry_out(18),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(18));

ULA19 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(19),
                 entradaB     => entradaB(19),
                 carry_in     => carry_out(18),
                 carry_out    => carry_out(19),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(19));

ULA20 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(20),
                 entradaB     => entradaB(20),
                 carry_in     => carry_out(19),
                 carry_out    => carry_out(20),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(20));

ULA21 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(21),
                 entradaB     => entradaB(21),
                 carry_in     => carry_out(20),
                 carry_out    => carry_out(21),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(21));

ULA22 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(22),
                 entradaB     => entradaB(22),
                 carry_in     => carry_out(21),
                 carry_out    => carry_out(22),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(22));

ULA23 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(23),
                 entradaB     => entradaB(23),
                 carry_in     => carry_out(22),
                 carry_out    => carry_out(23),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(23));

ULA24 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(24),
                 entradaB     => entradaB(24),
                 carry_in     => carry_out(23),
                 carry_out    => carry_out(24),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(24));

ULA25 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(25),
                 entradaB     => entradaB(25),
                 carry_in     => carry_out(24),
                 carry_out    => carry_out(25),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(25));

ULA26 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(26),
                 entradaB     => entradaB(26),
                 carry_in     => carry_out(25),
                 carry_out    => carry_out(26),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(26));

ULA27 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(27),
                 entradaB     => entradaB(27),
                 carry_in     => carry_out(26),
                 carry_out    => carry_out(27),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(27));

ULA28 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(28),
                 entradaB     => entradaB(28),
                 carry_in     => carry_out(27),
                 carry_out    => carry_out(28),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(28));

ULA29 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(29),
                 entradaB     => entradaB(29),
                 carry_in     => carry_out(28),
                 carry_out    => carry_out(29),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(29));

ULA30 :  entity work.ULA_MIPS_1bit
        port map(entradaA     => entradaA(30),
                 entradaB     => entradaB(30),
                 carry_in     => carry_out(29),
                 carry_out    => carry_out(30),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(30));
					    
ULA31 :  entity work.ULA_MIPS_bit31
        port map(entradaA     => entradaA(31),
                 entradaB     => entradaB(31),
                 carry_in     => carry_out(30),
                 carry_out    => carry_out(31),
					  SelMux_invB  => SelMux_invB,
					  SLT          => SLT,
					  SelMux       => SelMux,
					  resultado    => resultado(31),
					  SLT_out      => overflow_SLT);

-- Zero <= NOT(or_reduce(resultado));

end architecture;