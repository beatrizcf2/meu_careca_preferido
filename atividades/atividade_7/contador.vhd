library ieee;
use ieee.std_logic_1164.all;

entity contador is
  -- Total de bits das entradas e saidas
  generic ( larguraDados     : natural := 8;
				larguraEndereco  : natural := 9;
				larguraInstrucao : natural := 13;
				larguraOpCode    : natural := 4;
				addrWidth        : natural := 6;
				simulacao        : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (   endROM   : out std_logic_vector(larguraEndereco-1 downto 0);
				 endRAM   : out std_logic_vector(addrWidth-1 downto 0);
             valorDado     : out  std_logic_vector(larguraDados-1 downto 0);
				 LED8          : out std_logic;
				 LED9          : out std_logic;
				 LEDconj       : out std_logic_vector(7 downto 0);
				 
	 
				 -- simulacao
				 CLOCK_50      : in std_logic;
				 clovis        : in std_logic
  );
end entity;


architecture arquitetura of contador is
  -- ideia colocar os nomes dos sinais como a saida dos modulos
  signal instrucao          : std_logic_vector(larguraInstrucao-1 downto 0); -- saida da ROM
  
  -- Control
  signal control            : std_logic_vector(3 downto 0);
  alias RD                  : std_logic is control(1);
  alias WR                  : std_logic is control(0);
  
  -- saida RAM
  signal dadoLido           : std_logic_vector(larguraDados-1 downto 0);    -- saida da leitura da RAM
  
  -- CPU Data adress
  signal dataAddress        : std_logic_vector(larguraEndereco-1 downto 0);  
  alias  entradaDecoderHab  : std_logic_vector(2 downto 0) is dataAddress(larguraEndereco-1 downto larguraEndereco-3);   
  alias  enderecoRAM        : std_logic_vector(addrWidth-1 downto 0) is dataAddress(larguraEndereco-4 downto 0);   

  -- CPU Escrita de dados
  signal dadoEscrito        : std_logic_vector(larguraDados-1 downto 0);  
  
  -- ROM Adress
  signal ROMAddress         : std_logic_vector(larguraEndereco-1 downto 0); -- entrada da ROM
  
  -- decoder habilitador 1
  signal saidaDecoderHab    : std_logic_vector(7 downto 0);
  alias  habilitaRam         : std_logic is saidaDecoderHab(0);
  
  -- Clock
  signal CLK                : std_logic;
  
  --LEDS
  signal saidaDecoderLED    : std_logic_vector(7 downto 0);
  signal saidaLEDconj            : std_logic_vector(7 downto 0);
  signal habLEDconj         : std_logic;
  signal saidaLED9               : std_logic;
  signal habLED9            : std_logic;
  signal saidaLED8               : std_logic;
  signal habLED8            : std_logic;

 
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= clovis;
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk     => CLOCK_50, 
						entrada => (not clovis), 
						saida   => CLK);
end generate;

-- port maps

ROM    : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
            port map (Endereco => ROMAddress, 
							 Dado     => instrucao);

RAM     : entity work.memoriaRAM  generic map (dataWidth => larguraDados, addrWidth => addrWidth)
				port map (addr     => enderecoRAM,
							 we       => WR,
							 re       => RD,
							 habilita => habilitaRam,
							 clk      => CLK,
							 dado_in  => dadoEscrito,
							 dado_out => dadoLido);

CPU     : entity work.CPU
	         port map (instructionIn => instrucao ,
							 dataIn        => dadoLido,
							 control       => control,
							 ROMAddress    => ROMAddress,
							 dataAddress   => dataAddress,
							 dataOut       => dadoEscrito,
							 CLK           => CLK);
							 

FFLED8    : entity work.flipFlop
             port map (DIN     => dadoEscrito(0), 
						     DOUT    => saidaLED8, 
				   		  ENABLE  => habLED8, 
				   		  CLK     => CLK, 
				   		  RST     => '0');

FFLED9    : entity work.flipFlop
             port map (DIN     => dadoEscrito(0), 
						     DOUT    => saidaLED9, 
				   		  ENABLE  => habLED9, 
				   		  CLK     => CLK, 
				   		  RST     => '0');
							  
FFLEDconj  : entity work.registradorGenerico generic map (larguraDados => 8)
             port map (DIN     => dadoEscrito(7 downto 0), 
						     DOUT    => saidaLEDconj, 
				   		  ENABLE  => habLEDconj, 
				   		  CLK     => CLK, 
				   		  RST     => '0');

decoderHab : entity work.decoder3x8
            port map( entrada => entradaDecoderHab,
                      saida => saidaDecoderHab);	
	
decoderLED : entity work.decoder3x8
            port map( entrada => dataAddress(2 downto 0),
                      saida => saidaDecoderLED);	
							 
habLED8    <= WR AND saidaDecoderHab(4) AND saidaDecoderLED(2);
habLED9    <= WR AND saidaDecoderHab(4) AND saidaDecoderLED(1);
habLEDconj <= WR AND saidaDecoderHab(4) AND saidaDecoderLED(0);

endROM     <= ROMAddress;
endRAM     <= enderecoRAM;
valorDado  <= dadoLido;
LED8       <= saidaLED8;
LED9       <= saidaLED9;
LEDconj    <= saidaLEDconj;






end architecture;