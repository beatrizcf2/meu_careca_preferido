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
  port   (  endROM   : out std_logic_vector(larguraEndereco-1 downto 0);
            endRAM   : out std_logic_vector(addrWidth-1 downto 0);
            valorDado     : out  std_logic_vector(larguraDados-1 downto 0);
            LED8          : out std_logic;
            LED9          : out std_logic;
            LEDconj       : out std_logic_vector(7 downto 0);
				HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out std_logic_vector(6 downto 0);
            SW0, SW1, SW2, SW3, SW4, SW5, SW6, SW7, SW8, SW9 : in std_logic;
            KEY0, KEY1, KEY2, KEY3, FPGA_RESST : in std_logic;

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

  -- Display
  signal habHEX0            :  std_logic;
  signal habHEX1            :  std_logic;
  signal habHEX2            :  std_logic;
  signal habHEX3            :  std_logic;
  signal habHEX4            :  std_logic;
  signal habHEX5            :  std_logic;

  -- saida ja decodificada pelo decodificador de 7 segmentos
  signal saidaDecHEX0       :  std_logic_vector(6 downto 0);
  signal saidaDecHEX1       :  std_logic_vector(6 downto 0);
  signal saidaDecHEX2       :  std_logic_vector(6 downto 0);
  signal saidaDecHEX3       :  std_logic_vector(6 downto 0);
  signal saidaDecHEX4       :  std_logic_vector(6 downto 0);
  signal saidaDecHEX5       :  std_logic_vector(6 downto 0);

  signal saidaRegHEX0       :  std_logic_vector(3 downto 0);
  signal saidaRegHEX1       :  std_logic_vector(3 downto 0);
  signal saidaRegHEX2       :  std_logic_vector(3 downto 0);
  signal saidaRegHEX3       :  std_logic_vector(3 downto 0);
  signal saidaRegHEX4       :  std_logic_vector(3 downto 0);
  signal saidaRegHEX5       :  std_logic_vector(3 downto 0);


  -- chaves e botoes
  signal SWconj             : std_logic_vector(7 downto 0);

  signal habKEY0            :  std_logic;
  signal habKEY1            :  std_logic;
  signal habKEY2            :  std_logic;
  signal habKEY3            :  std_logic;
  signal habRESET           :  std_logic;
  signal habSW8             :  std_logic;
  signal habSW9             :  std_logic;
  signal habSWconj          :  std_logic;

  signal saidaBufferKEY0            :  std_logic;
  signal saidaBufferKEY1            :  std_logic;
  signal saidaBufferKEY2            :  std_logic;
  signal saidaBufferKEY3            :  std_logic;
  signal saidaBufferRESET           :  std_logic;
  signal saidaBufferSW8             :  std_logic;
  signal saidaBufferSW9             :  std_logic;
  signal saidaBufferSWconj          :  std_logic;

  --signal leituraChaves              : std_logic_vector(7 downto 0); -- n tenho ctz se precisa msm
  
 
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
							  
RegLEDconj  : entity work.registradorGenerico generic map (larguraDados => 8)
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
                      
conversorHEX0 :  entity work.conversorHex7Seg
            port map( dadoHex => saidaRegHEX0,
                      apaga =>  '0',
                      negativo => '0',
                      overFlow =>  '0',
                      saida7seg => saidaDecHEX0);

conversorHEX1 :  entity work.conversorHex7Seg
            port map( dadoHex => saidaRegHEX1,
                      apaga =>  '0',
                      negativo => '0',
                      overFlow =>  '0',
                      saida7seg => saidaDecHEX1);

conversorHEX2 :  entity work.conversorHex7Seg
            port map( dadoHex => saidaRegHEX2,
                      apaga =>  '0',
                      negativo => '0',
                      overFlow =>  '0',
                      saida7seg => saidaDecHEX2);

conversorHEX3 :  entity work.conversorHex7Seg
            port map( dadoHex => saidaRegHEX3,
                      apaga =>  '0',
                      negativo => '0',
                      overFlow =>  '0',
                      saida7seg => saidaDecHEX3);

conversorHEX4 :  entity work.conversorHex7Seg
            port map( dadoHex => saidaRegHEX4,
                      apaga =>  '0',
                      negativo => '0',
                      overFlow =>  '0',
                      saida7seg => saidaDecHEX4);

conversorHEX5 :  entity work.conversorHex7Seg
            port map( dadoHex => saidaRegHEX5,
                      apaga =>  '0',
                      negativo => '0',
                      overFlow =>  '0',
                      saida7seg => saidaDecHEX5);

							  
RegHEX0  : entity work.registradorGenerico generic map (larguraDados => 4)
             port map ( DIN     => dadoEscrito(3 downto 0), 
                        DOUT    => saidaRegHEX0, 
                        ENABLE  => habHEX0, 
                        CLK     => CLK, 
                        RST     => '0');

RegHEX1  : entity work.registradorGenerico generic map (larguraDados => 4)
             port map ( DIN     => dadoEscrito(3 downto 0), 
                        DOUT    => saidaRegHEX1, 
                        ENABLE  => habHEX1, 
                        CLK     => CLK, 
                        RST     => '0');
                        
RegHEX2  : entity work.registradorGenerico generic map (larguraDados => 4)
             port map ( DIN     => dadoEscrito(3 downto 0), 
                        DOUT    => saidaRegHEX2, 
                        ENABLE  => habHEX2, 
                        CLK     => CLK, 
                        RST     => '0');

RegHEX3  : entity work.registradorGenerico generic map (larguraDados => 4)
             port map ( DIN     => dadoEscrito(3 downto 0), 
                        DOUT    => saidaRegHEX3, 
                        ENABLE  => habHEX3, 
                        CLK     => CLK, 
                        RST     => '0');

RegHEX4  : entity work.registradorGenerico generic map (larguraDados => 4)
             port map ( DIN     => dadoEscrito(3 downto 0), 
                        DOUT    => saidaRegHEX4, 
                        ENABLE  => habHEX4, 
                        CLK     => CLK, 
                        RST     => '0');


RegHEX5  : entity work.registradorGenerico generic map (larguraDados => 4)
             port map ( DIN     => dadoEscrito(3 downto 0), 
                        DOUT    => saidaRegHEX5, 
                        ENABLE  => habHEX5, 
                        CLK     => CLK, 
                        RST     => '0');

bufferSWConj :  entity work.buffer_3_state_8portas
              port map(entrada  => SWconj, 
                       habilita => habSWconj, 
                       saida    => dadoLido); -- o q vai no dataIn
  
bufferSW8 :  entity work.buffer_3_state_1porta
              port map(entrada  => SW8, 
                       habilita => habSW8, 
                       saida    => dadoLido(0)); -- o q vai no dataIn

bufferSW9 :  entity work.buffer_3_state_1porta
              port map(entrada  => SW9, 
                       habilita => habSW9, 
                       saida    => dadoLido(0));

bufferKEY0 :  entity work.buffer_3_state_1porta
              port map(entrada  => KEY0, 
                       habilita => habKEY0, 
                       saida    => dadoLido(0));

bufferKEY1 :  entity work.buffer_3_state_1porta
              port map(entrada  => KEY1, 
                       habilita => habKEY1, 
                       saida    => dadoLido(0));

bufferKEY2 :  entity work.buffer_3_state_1porta
              port map(entrada  => KEY2, 
                       habilita => habKEY2, 
                       saida    => dadoLido(0));

bufferKEY3 :  entity work.buffer_3_state_1porta
              port map(entrada  => KEY3, 
                       habilita => habKEY3, 
                       saida    => dadoLido(0));

bufferRESET :  entity work.buffer_3_state_1porta
              port map(entrada  => FPGA_RESST, 
                       habilita => habRESET, 
                       saida    => dadoLido(0));
							 
habLED8    <= WR AND saidaDecoderHab(4) AND saidaDecoderLED(1) AND (NOT dataAddress(5));
habLED9    <= WR AND saidaDecoderHab(4) AND saidaDecoderLED(2) AND (NOT dataAddress(5));
habLEDconj <= WR AND saidaDecoderHab(4) AND saidaDecoderLED(0) AND (NOT dataAddress(5));

habHEX0    <= WR AND saidaDecoderHab(4) AND saidaDecoderLED(0) AND (dataAddress(5));
habHEX1    <= WR AND saidaDecoderHab(4) AND saidaDecoderLED(1) AND (dataAddress(5));
habHEX2    <= WR AND saidaDecoderHab(4) AND saidaDecoderLED(2) AND (dataAddress(5));
habHEX3    <= WR AND saidaDecoderHab(4) AND saidaDecoderLED(3) AND (dataAddress(5));
habHEX4    <= WR AND saidaDecoderHab(4) AND saidaDecoderLED(4) AND (dataAddress(5));
habHEX5    <= WR AND saidaDecoderHab(4) AND saidaDecoderLED(5) AND (dataAddress(5));

habKEY0    <= RD AND saidaDecoderHab(5) AND saidaDecoderLED(0) AND (NOT dataAddress(5));
habKEY1    <= RD AND saidaDecoderHab(5) AND saidaDecoderLED(1) AND (NOT dataAddress(5));
habKEY2    <= RD AND saidaDecoderHab(5) AND saidaDecoderLED(2) AND (NOT dataAddress(5));
habKEY3    <= RD AND saidaDecoderHab(5) AND saidaDecoderLED(3) AND (NOT dataAddress(5));
habRESET   <= RD AND saidaDecoderHab(5) AND saidaDecoderLED(4) AND (NOT dataAddress(5));

habSWconj  <= RD AND saidaDecoderHab(5) AND saidaDecoderLED(0) AND (NOT dataAddress(5));
habSW8     <= RD AND saidaDecoderHab(5) AND saidaDecoderLED(1) AND (NOT dataAddress(5));
habSW9     <= RD AND saidaDecoderHab(5) AND saidaDecoderLED(2) AND (NOT dataAddress(5));


endROM     <= ROMAddress;
endRAM     <= enderecoRAM;
valorDado  <= dadoLido;
LED8       <= saidaLED8;
LED9       <= saidaLED9;
LEDconj    <= saidaLEDconj;

HEX0       <= saidaDecHEX0;
HEX1       <= saidaDecHEX1;
HEX2       <= saidaDecHEX2;
HEX3       <= saidaDecHEX3;
HEX4       <= saidaDecHEX4;
HEX5       <= saidaDecHEX5;

SWconj <= SW7 & SW6 & SW5 & SW4 & SW3 & SW2 & SW1 & SW0;

 






end architecture;