library ieee;
use ieee.std_logic_1164.all;

entity FD_Aula1 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 4;
              simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 SAIDA : out std_logic_vector(9 downto 0)
  );
end entity;


architecture arquitetura of FD_Aula1 is

-- Faltam alguns sinais:
  signal chavesX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  signal chavesY_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal seletor_ULA : std_logic;
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Chave_Operacao_ULA : std_logic;
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal Reset_A : std_logic;
  signal MUX_REG1 : std_logic_vector (larguraDados-1 downto 0);
  signal ROM_controle : std_logic_
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- Falta preencher o port map.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX =>  chavesY_ULA_A,
                 entradaB_MUX =>   Saida_ULA,
                 seletor_MUX =>    SelMUX,
                 saida_MUX =>      MUX_REG1);

-- Falta preencher o port map.
REG1 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN =>    MUX_REG1, 
						  DOUT =>   REG1_ULA_A, 
						  ENABLE => Habilita_A, 
						  CLK =>    CLK, 
						  RST =>    Reset_A);

-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA =>  REG1_ULA_A,
						  entradaB =>  chavesX_ULA_B, 
						  saida =>     Saida_ULA, 
						  seletor =>   seletor_ULA);


--ROM : entity work.memoriaROM generic map(dataWidth => larguraDados)
--			port map (
--						 Endereco => 
--						 Dado     =>
--						 );
-- Chaves e Botoes: Falta completar.




chavesX_ULA_B <= SW(9 downto 6);
chavesY_ULA_A <= SW(3 downto 0);
seletor_ULA <= SW(4);
SelMUX <= SW(5);
CLK <= KEY(0);
Reset_A <= not KEY(1);
Habilita_A <= KEY(2);

-- Obs.:
-- SW(9 downto 6) : entrada da variavel X.
-- SW(3 downto 0) : entrada da variavel Y.
-- SW(4) : o ponto de controle da Operacao da ULA.
-- SW(5) : o ponto de controle de SelMUX.
-- KEY(0) : o bot??o do clock.
-- KEY(1) : o ponto de controle para Reset A (o Botao em repouso fica no n??vel alto, portanto, devemos usar not KEY(1) no Reset).
-- KEY(2) : o ponto de controle de Habilita A.
-- KEY(3) : sem uso.

-- A ligacao dos LEDs:
LEDR (9) <= SelMUX;
LEDR (8) <= Habilita_A;
LEDR (7) <= Reset_A;
LEDR (6) <= seletor_ULA;
LEDR (5) <= '0';    -- Apagado.
LEDR (4) <= '0';    -- Apagado.
LEDR (3 downto 0) <= REG1_ULA_A;

end architecture;