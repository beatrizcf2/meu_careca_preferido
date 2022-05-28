library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debugMonitor is

   generic
   (
	larguraDados     : natural  :=    32
    );
  -- O port é obrigatório e possui o objeto “signal” implícito.
  	port (PC : in std_logic_vector(larguraDados-1 downto 0);
			Instrucao : in std_logic_vector(larguraDados-1 downto 0);
			LeituraRS : in std_logic_vector(larguraDados-1 downto 0);
			LeituraRT : in std_logic_vector(larguraDados-1 downto 0);
			EscritaRD : in std_logic_vector(larguraDados-1 downto 0);
			EntradaB_ULA : in std_logic_vector(larguraDados-1 downto 0);
			imediatoEstendido : in std_logic_vector(larguraDados-1 downto 0);
			saidaULA : in std_logic_vector(larguraDados-1 downto 0);
			dadoLido_RAM : in std_logic_vector(larguraDados-1 downto 0);
			proxPC : in std_logic_vector(larguraDados-1 downto 0);
		
    		ULActrl : in std_logic_vector(3 downto 0);
			escreveC : in std_logic;
			MUXPCBEQJUMP : in std_logic;
			MUXRTRD : in std_logic;
			MUXRTIMED : in std_logic;
			MUXULAMEM : in std_logic;
			iBEQ : in std_logic;
			WR : in std_logic;
			RD : in std_logic;
			--Output
			clkTCL : out std_logic);
end entity;   -- Também pode ser utilizado: "end entity";

architecture arquitetura of debugMonitor is 

component MIPSMonitor

        port(

                probe   :       in std_logic_vector(510 downto 0) := (others => '0');

                source  :       out std_logic

        );

end component;
            
				
begin

altsource1: MIPSMonitor

			port map(probe(31 downto 0) => PC,
						probe(63 downto 32) => Instrucao,
						probe(95 downto 64) => LeituraRS,
						probe(127 downto 96) => LeituraRT,
						probe(159 downto 128) => EscritaRD,
						probe(191 downto 160) => EntradaB_ULA,
						probe(223 downto 192) => imediatoEstendido,
						probe(255 downto 224) => saidaULA,
						probe(287 downto 256) => dadoLido_RAM,
						probe(319 downto 288) => proxPC,
						
						probe(498 downto 320) => open,
						
						probe(499) => MUXPCBEQJUMP,
						probe(500) => MUXRTRD,
						probe(501) => MUXRTIMED,
						probe(502) => MUXULAMEM,
						probe(503) => iBEQ,
						probe(504) => WR,
						probe(505) => RD,
						probe(509 downto 506) => ULActrl,
						probe(510) => escreveC,
						-- continuar
						source => clkTCL);

end architecture;