library ieee;
use ieee.std_logic_1164.all;

entity dataFlow is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
				larguraEndereco : natural := 3;
				simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
    PC_OUT: out std_logic_vector(larguraEndereco-1 downto 0);
    LEDR  : out std_logic_vector(9 downto 0)
  );
end entity;


architecture arquitetura of dataFlow is

-- Faltam alguns sinais:
  signal MUX_REG1           : std_logic_vector (larguraDados-1 downto 0);
  signal REG1_out           : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA          : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle    : std_logic_vector (5 downto 0);
  signal barramento_addr    : std_logic_vector (8 downto 0);
  signal PC_out             : std_logic_vector (8 downto 0);
  signal habilitaRAM        : std_logic;
  signal proxPC             : std_logic_vector (2 downto 0);
  signal Chave_Operacao_ULA : std_logic;
  signal CLK                : std_logic;
  signal SelMUX             : std_logic;
  signal Habilita_A         : std_logic;
  signal Reset_A            : std_logic;
  signal Operacao_ULA       : std_logic_vector(1 downto 0);
  signal opCode             : std_logic_vector(3 downto 0);
  signal habilitaLeituraMEM : std_logic;
  signal habilitaEscritaMEM : std_logic;
  signal instrucao          : std_logic_vector(12 downto 0);
  signal memRAM_out 			 : std_logic_vector(larguraDados-1 downto 0);

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk     => CLOCK_50, 
						entrada => (not KEY(0)), 
						saida   => CLK);
end generate;

-- O port map completo do MUX.
MUX1    :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
             port map(entradaA_MUX => memRAM_out,
                      entradaB_MUX => Saida_ULA,
                      seletor_MUX  => SelMUX,
                      saida_MUX    => MUX_REG1);

-- O port map completo do Acumulador.
REGA    : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
             port map (DIN     => MUX_REG1, 
						     DOUT    => REG1_out, 
				   		  ENABLE  => Habilita_A, 
				   		  CLK     => CLK, 
				   		  RST     => Reset_A);

-- O port map completo do Program Counter.
PC      : entity work.registradorGenerico   generic map (larguraDados => larguraEndereco)
            port map (DIN      => proxPC, 
						    DOUT     => PC_out, 
						    ENABLE   => '1', 
						    CLK      => CLK, 
						    RST      => '0');

incPC   :  entity work.somaUm  generic map (larguraDados => larguraEndereco, constante => 1)
            port map(entrada   => PC_out, 
							saida     => proxPC);


-- O port map completo da ULA:
ULA1    : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
            port map (entradaA => REG1_out, 
							 entradaB => chavesX_ULA_B, 
							 saida    => Saida_ULA, 
							 seletor  => Operacao_ULA);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1    : entity work.memoriaROM   generic map (dataWidth => larguraDados, addrWidth => larguraEndereco)
            port map (Endereco => PC_out, 
							 Dado     => instrucao);

DECODER : entity work.decoder
				port map (entrada  => opCode,
							 saida    => Sinais_Controle);

RAM     : entity work.decoder  generic map (dataWidth => larguraDados, addrWidth => larguraDados)
				port map (addr     => barramento_addr(7 downto 0),
							 we       => habilitaEscritaMEM,
							 re       => habilitaLeituraMEM,
							 habilita => barramento_addr(8),
							 dado_in  => REG1_out,
							 dado_out => memRAM_out);
								
opCode <= instrucao(12 downto 9);
barramento_addr <= instrucao(8 downto 0);		
selMUX <= Sinais_Controle(5);
Habilita_A <= Sinais_Controle(4);
Reset_A <= CLK;
Operacao_ULA <= Sinais_Controle(3 downto 2);
habilitaLeituraMEM <= Sinais_Controle(1);
habilitaEscritaMEM <= Sinais_Controle(0);

-- I/O
chavesY_MUX_A <= SW(3 downto 0);
chavesX_ULA_B <= SW(9 downto 6);

-- A ligacao dos LEDs:
LEDR (9) <= SelMUX;
LEDR (8) <= Habilita_A;
LEDR (7) <= Reset_A;
LEDR (6) <= Operacao_ULA;
LEDR (5) <= '0';    -- Apagado.
LEDR (4) <= '0';    -- Apagado.
LEDR (3 downto 0) <= REG1_out;

--PC_OUT <= barramento_addr;

end architecture;