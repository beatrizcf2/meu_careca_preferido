library ieee;
use ieee.std_logic_1164.all;

entity contador is
  -- Total de bits das entradas e saidas
  generic ( larguraDados     : natural := 8;
            larguraEndereco  : natural := 9;
            larguraInstrucao : natural := 13;
            larguraOpCode    : natural := 4;
            addrWidth        : natural := 6;
            simulacao        : boolean := FALSE	 -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (  endROM        : out std_logic_vector(larguraEndereco-1 downto 0);
            endRAM        : out std_logic_vector(addrWidth-1 downto 0);
            valorDado     : out  std_logic_vector(larguraDados-1 downto 0);
				LEDR          : out std_logic_vector(9 downto 0);
            SW            : in std_logic_vector(9 downto 0);
				teste_datain  : out std_logic_vector(7 downto 0);
				teste_hab     : out std_logic;
				KEY           : in std_logic_vector(3 downto 0);

            FPGA_RESET_N : in std_logic;
				HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out std_logic_vector(6 downto 0);
				flaginha : out std_logic;
				ula_ain, ula_bin, ula_out : out std_logic_vector(larguraDados-1 downto 0);
            -- simulacao
            CLOCK_50      : in std_logic
  );
end entity;


architecture arquitetura of contador is
  -- ideia colocar os nomes dos sinais como a saida dos modulos
  signal instrucao          : std_logic_vector(larguraInstrucao-1 downto 0); -- saida da ROM
  
  -- Control
  signal control            : std_logic_vector(3 downto 0);
  alias RD                  : std_logic is control(1);
  alias WR                  : std_logic is control(0);
  
  -- saida dado lido
  signal dadoLido           : std_logic_vector(larguraDados-1 downto 0);    -- saida da leitura da RAM ou leitura das chaves e botoes
  
  -- CPU Data adress
  signal dataAddress        : std_logic_vector(larguraEndereco-1 downto 0);  
  alias  entradaDecoderBlock  : std_logic_vector(2 downto 0) is dataAddress(larguraEndereco-1 downto larguraEndereco-3);   
  alias  enderecoRAM        : std_logic_vector(addrWidth-1 downto 0) is dataAddress(larguraEndereco-4 downto 0);   

  -- CPU Escrita de dados
  signal dadoEscrito        : std_logic_vector(larguraDados-1 downto 0);  
  
  -- ROM Adress
  signal ROMAddress         : std_logic_vector(larguraEndereco-1 downto 0); -- entrada da ROM
  
  -- decoder habilitador 1
  signal saidaDecoderBlock    : std_logic_vector(7 downto 0);
  alias  habilitaRam         : std_logic is saidaDecoderBlock(0);
  
  -- Clock
  signal CLK                : std_logic;
  
  --LEDS
  signal saidaDecoderAddr    : std_logic_vector(7 downto 0);
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


  -- chaves e botoes

  signal habKEY0            :  std_logic;
  signal habKEY1            :  std_logic;
  signal habKEY2            :  std_logic;
  signal habKEY3            :  std_logic;
  signal habRESET           :  std_logic;
  signal habSW8             :  std_logic;
  signal habSW9             :  std_logic;
  signal habSWconj          :  std_logic;

  signal saidaBufferKEY0            :  std_logic; -- Fazer alias com o dado lido?
  signal saidaBufferKEY1            :  std_logic;
  signal saidaBufferKEY2            :  std_logic;
  signal saidaBufferKEY3            :  std_logic;
  signal saidaBufferRESET           :  std_logic;
  signal saidaBufferSW8             :  std_logic;
  signal saidaBufferSW9             :  std_logic;
  signal saidaBufferSWconj          :  std_logic;
	
  
  signal saidaDebouncer, ADDR_511   :  std_logic;
  signal key0_clock : std_logic;
  
  --signal leituraChaves              : std_logic_vector(7 downto 0); -- n tenho ctz se precisa msm
  
 
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
CLK <= CLOCK_50;
--detectorSub0: work.edgeDetector(bordaSubida)
--        port map (clk     => CLOCK_50, 
--						entrada => (not KEY(0)), 
--						saida   => CLK);
end generate;


detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk     => CLOCK_50, 
						entrada => (not KEY(0)), 
						saida   => key0_clock);
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
							 CLK           => CLK,
							 flag => flaginha,
							 ulaain => ula_ain,
							 ulabin => ula_bin,
							 ulaout => ula_out);
							 

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

decoderBlock : entity work.decoder3x8
            port map( entrada => entradaDecoderBlock,
                      saida => saidaDecoderBlock);	
	
decoderAddr : entity work.decoder3x8
            port map( entrada => dataAddress(2 downto 0),
                      saida => saidaDecoderAddr);
                      
							 

HEX0_decoder : entity work.decHex7Seg
				port map(
						DATA_IN  => dadoEscrito(3 downto 0),
						ENABLE   => habHEX0,
						CLK      => CLK,
						DATA_OUT => saidaDecHEX0
				);
				
HEX1_decoder : entity work.decHex7Seg
				port map(
						DATA_IN  => dadoEscrito(3 downto 0),
						ENABLE   => habHEX1,
						CLK      => CLK,
						DATA_OUT => saidaDecHEX1
				);

HEX2_decoder : entity work.decHex7Seg
				port map(
						DATA_IN  => dadoEscrito(3 downto 0),
						ENABLE   => habHEX2,
						CLK      => CLK,
						DATA_OUT => saidaDecHEX2
				);

HEX3_decoder : entity work.decHex7Seg
				port map(
						DATA_IN  => dadoEscrito(3 downto 0),
						ENABLE   => habHEX3,
						CLK      => CLK,
						DATA_OUT => saidaDecHEX3
				);
				
HEX4_decoder : entity work.decHex7Seg
				port map(
						DATA_IN  => dadoEscrito(3 downto 0),
						ENABLE   => habHEX4,
						CLK      => CLK,
						DATA_OUT => saidaDecHEX4
				);
				
HEX5_decoder : entity work.decHex7Seg
				port map(
						DATA_IN  => dadoEscrito(3 downto 0),
						ENABLE   => habHEX5,
						CLK      => CLK,
						DATA_OUT => saidaDecHEX5
				);

bufferSWConj :  entity work.buffer_3_state generic map (dataWidth => 8)
              port map(entrada  => SW(7 downto 0), 
                       habilita => habSWconj, 
                       saida    => dadoLido); -- o q vai no dataIn
  
bufferSW8 :  entity work.buffer_3_state  generic map (dataWidth => 1)
              port map(entrada(0)  => SW(8), 
                       habilita => habSW8, 
                       saida(0)    => dadoLido(0)); -- o q vai no dataIn

bufferSW9 :  entity work.buffer_3_state  generic map (dataWidth => 1)
              port map(entrada(0)  => SW(9), 
                       habilita => habSW9, 
                       saida(0)    => dadoLido(0));

ADDR_511 <= dataAddress(8) and dataAddress(7) and dataAddress(6) and 
				dataAddress(5) and dataAddress(4) and dataAddress(3) and 
				dataAddress(2) and dataAddress(1) and dataAddress(0) and WR;
				
				
FF_Debouncer : entity work.flipFlop
             port map (DIN     => '1', 
						     DOUT    => saidaDebouncer, 
				   		  ENABLE  => '1', 
				   		  CLK     => key0_clock, 
				   		  RST     => ADDR_511);
							  
bufferKEY0 :  entity work.buffer_3_state  generic map (dataWidth => 1)
              port map(entrada(0)  => saidaDebouncer, 
                       habilita => habKEY0, 
                       saida(0)    => dadoLido(0));

bufferKEY1 :  entity work.buffer_3_state  generic map (dataWidth => 1)
              port map(entrada(0)  => KEY(1), 
                       habilita => habKEY1, 
                       saida(0)    => dadoLido(0));

bufferKEY2 :  entity work.buffer_3_state  generic map (dataWidth => 1)
              port map(entrada(0)  => KEY(2), 
                       habilita => habKEY2, 
                       saida(0)    => dadoLido(0));

bufferKEY3 :  entity work.buffer_3_state  generic map (dataWidth => 1)
              port map(entrada(0)  => KEY(3), 
                       habilita => habKEY3, 
                       saida(0)    => dadoLido(0));

bufferRESET :  entity work.buffer_3_state  generic map (dataWidth => 1)
              port map(entrada(0)  => FPGA_RESET_N, 
                       habilita => habRESET, 
                       saida(0)    => dadoLido(0));
							 
habLED8    <= WR AND saidaDecoderBlock(4) AND saidaDecoderAddr(1) AND (NOT dataAddress(5));
habLED9    <= WR AND saidaDecoderBlock(4) AND saidaDecoderAddr(2) AND (NOT dataAddress(5));
habLEDconj <= WR AND saidaDecoderBlock(4) AND saidaDecoderAddr(0) AND (NOT dataAddress(5));

habHEX0    <= WR AND saidaDecoderBlock(4) AND saidaDecoderAddr(0) AND (dataAddress(5));
habHEX1    <= WR AND saidaDecoderBlock(4) AND saidaDecoderAddr(1) AND (dataAddress(5));
habHEX2    <= WR AND saidaDecoderBlock(4) AND saidaDecoderAddr(2) AND (dataAddress(5));
habHEX3    <= WR AND saidaDecoderBlock(4) AND saidaDecoderAddr(3) AND (dataAddress(5));
habHEX4    <= WR AND saidaDecoderBlock(4) AND saidaDecoderAddr(4) AND (dataAddress(5));
habHEX5    <= WR AND saidaDecoderBlock(4) AND saidaDecoderAddr(5) AND (dataAddress(5));

habKEY0    <= RD AND saidaDecoderBlock(5) AND saidaDecoderAddr(0) AND (dataAddress(5));
habKEY1    <= RD AND saidaDecoderBlock(5) AND saidaDecoderAddr(1) AND (dataAddress(5));
habKEY2    <= RD AND saidaDecoderBlock(5) AND saidaDecoderAddr(2) AND (dataAddress(5));
habKEY3    <= RD AND saidaDecoderBlock(5) AND saidaDecoderAddr(3) AND (dataAddress(5));
habRESET   <= RD AND saidaDecoderBlock(5) AND saidaDecoderAddr(4) AND (dataAddress(5));

habSWconj  <= RD AND saidaDecoderBlock(5) AND saidaDecoderAddr(0) AND (NOT dataAddress(5));
habSW8     <= RD AND saidaDecoderBlock(5) AND saidaDecoderAddr(1) AND (NOT dataAddress(5));
habSW9     <= RD AND saidaDecoderBlock(5) AND saidaDecoderAddr(2) AND (NOT dataAddress(5));


endROM     <= ROMAddress;
endRAM     <= enderecoRAM;
valorDado  <= dadoLido;
LEDR(8)       <= saidaLED8;
LEDR(9)       <= saidaLED9;
LEDR(7 downto 0)    <= saidaLEDconj;

HEX0       <= saidaDecHEX0;
HEX1       <= saidaDecHEX1;
HEX2       <= saidaDecHEX2;
HEX3       <= saidaDecHEX3;
HEX4       <= saidaDecHEX4;
HEX5       <= saidaDecHEX5;


 
teste_datain <= dadoEscrito;
teste_hab <= habSWconj;




end architecture;