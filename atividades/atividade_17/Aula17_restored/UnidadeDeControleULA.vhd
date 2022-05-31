library ieee;
use ieee.std_logic_1164.all;

entity UnidadeDeControleULA is
  port (opcode   : in std_logic_vector(5 downto 0);
        funct    : in std_logic_vector(5 downto 0);
        tipoR    : in std_logic;
        ULActrl  : out std_logic_vector(3 downto 0)
  );
end entity;

architecture comportamento of UnidadeDeControleULA is

  constant larguraULActrl  : natural := 4;

  signal decoderFunctOut   : std_logic_vector(3 downto 0);
  signal decoderOpCodeOut  : std_logic_vector(3 downto 0);
  
  begin

  ULAfunct : entity work.DecoderFunctULActrl
            port map (funct   => funct,
                      ULActrl => decoderFunctOut);
						
   
  ULAopcode : entity work.DecoderOpCodeULActrl
            port map (opcode   => opcode,
                      ULActrl  => decoderOpCodeOut);    

  MUX_decs  :  entity work.muxGenerico2x1  generic map (larguraDados => larguraULActrl)
            port map(entradaA_MUX => decoderFunctOut,
                     entradaB_MUX => decoderOpCodeOut,
                     seletor_MUX  => tipoR,
                     saida_MUX    => ULActrl);
	
				 
end architecture;