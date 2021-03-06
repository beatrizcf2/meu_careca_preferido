library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- o codigo abaixo esta incompleto
-- 'e apenas um rascunho

entity ULA_MIPS_1bit is
  
  -- O port é obrigatório e possui o objeto “signal” implícito.
  port    
  (	
      -- ULA Soma Sub
		entradaA           : in  std_logic;
		entradaB           : in  std_logic;
		carry_in           : in  std_logic;
		carry_out          : out  std_logic;
		
		-- Mux 2x1
		SelMux_invB        : in  std_logic;
		
		-- Mux 4x1
		SLT                : in  std_logic;
		SelMux             : in  std_logic_vector(1 downto 0);
		resultado          : out  std_logic
		
  );
  
end entity;

architecture arquitetura of ULA_MIPS_1bit is      
		signal saidaMUX_B              : std_logic;
		signal saida_AND               : std_logic;
		signal saida_OR                : std_logic;
		signal saida_somador           : std_logic;

begin

MUX2 :  entity work.muxGenerico2x1  generic map (larguraDados => 1)
        port map(entrada0_MUX => entradaB,
                 entrada1_MUX => (NOT entradaB),
                 seletor_MUX  => SelMux_invB,
                 saida_MUX    => saidaMUX_B);

Somador : entity work.SomadorCompleto
        port map (entradaA => saidaMUX_B, 
			         entradaB => entradaA, 
						carry_in => carry_in,
						carry_out=> carry_out,
			         soma    => saida_somador);
					
						
MUX4 :  entity work.muxGenerico4x1  generic map (larguraDados => 1)
             port map(entrada0_MUX => saida_AND,
                      entrada1_MUX => saida_OR,
                      entrada2_MUX => saida_somador,
                      entrada3_MUX => SLT,
                      seletor_MUX  => SelMux,
                      saida_MUX    => resultado);
							 
saida_AND <= saidaMUX_B AND entradaA;
saida_OR <= saidaMUX_B OR entradaA;

end architecture;