library ieee;
use ieee.std_logic_1164.all;

entity dataFlow is
  -- Total de bits das entradas e saidas
  generic ( larguraDados     : natural := 8;
				larguraEndereco  : natural := 9;
				larguraInstrucao : natural := 13;
				larguraOpCode    : natural := 4;
				simulacao        : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    -- sinais que eu quero analisar na wave
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
    PC_OUT: out std_logic_vector(larguraEndereco-1 downto 0);
	 RESULTADO_ULA: out std_logic_vector(larguraDados-1 downto 0);
	 saidaFlag_H: out std_logic;
	 ACUMULADOR: out std_logic_vector(larguraDados-1 downto 0);
	 seletorDaULA : out std_logic_vector(1 downto 0);
	 entradaA_ULA : out std_logic_vector(larguraDados-1 downto 0);
	 entradaB_ULA : out std_logic_vector(larguraDados-1 downto 0);
	 vimediatoValor : out std_logic_vector(larguraDados-1 downto 0);
	 sel_MUX_t : out std_logic;
	 habilita_flag : out std_logic
  );
end entity;


architecture arquitetura of dataFlow is
  -- ideia colocar os nomes dos sinais como a saida dos modulos

  -- MUX ULA
  signal saidaMuxULA        : std_logic_vector (larguraDados-1 downto 0);                         

  -- MUX DESVIO
  signal saidaMuxPC         : std_logic_vector (larguraInstrucao-larguraOpCode-1 downto 0);        

  -- ULA
  signal saidaOperacaoULA   : std_logic_vector (larguraDados-1 downto 0);                        
  signal saidaFlagULA       : std_logic; -- saida da ULA que alimenta a flag igual                

  -- Flp Flop FLAG
  signal saidaFlag          : std_logic;                                                          

  -- Reg1 Acumulador
  signal saidaRegA          : std_logic_vector (larguraDados-1 downto 0);                         

  -- Logica de Desvio
  signal selDesvio			 : std_logic_vector(1 downto 0);                                         

  -- Unidade de controle tenho 12 pontos
  signal pontosControle     : std_logic_vector (11 downto 0);                                    
  alias habilitaEscritaMEM  : std_logic is pontosControle(0);
  alias habilitaLeituraMEM  : std_logic is pontosControle(1);
  alias habilitaFlagIgual   : std_logic is pontosControle(2);                                                       
  alias operacaoULA         : std_logic_vector(1 downto 0) is pontosControle(4 downto 3);                           
  alias habilitaA           : std_logic is pontosControle(5);                                                          
  alias selMux              : std_logic is pontosControle(6);                                                           
  alias pontoJEQ            : std_logic is pontosControle(7);                                                          
  alias pontoJSR            : std_logic is pontosControle(8);                                                           
  alias pontoRET            : std_logic is pontosControle(9);                                                           
  alias pontoJMP            : std_logic is pontosControle(10);                                                           
  alias habEscritaRetorno   : std_logic is pontosControle(11);                                                           

  -- RAM
  signal saidaDados 			 : std_logic_vector(larguraDados-1 downto 0);                           

  -- PC
  signal saidaPC            : std_logic_vector (larguraInstrucao-larguraOpCode-1 downto 0);        

  -- Soma constante
  signal saidaInc           : std_logic_vector (larguraInstrucao-larguraOpCode-1 downto 0);       
 
  -- Retorno
  signal saidaRetorno       : std_logic_vector(larguraEndereco-1 downto 0);                       
  
  -- Clock
  signal CLK                : std_logic;
  
  -- Instrucao
  signal instrucao          : std_logic_vector(12 downto 0);  
  alias  opCode             : std_logic_vector(3 downto 0) is instrucao(12 downto 9);   
  alias  imediatoEndereco   : std_logic_vector(8 downto 0) is instrucao(8 downto 0);                -- imediatoValorRAM
  alias  imediatoValor      : std_logic_vector(7 downto 0) is instrucao(7 downto 0);                -- imediatoValorValor
  alias  imediatoJump       : std_logic_vector(8 downto 0) is instrucao(8 downto 0);                -- imediatoJump

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
MUX_ULA    :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
             port map(entradaA_MUX => saidaDados,
                      entradaB_MUX => imediatoValor,
                      seletor_MUX  => selMux,
                      saida_MUX    => saidaMuxULA);

-- O port map completo do Acumulador.
REG_A    : entity work.registradorGenerico  generic map (larguraDados => larguraDados)
             port map (DIN     => saidaOperacaoULA, 
						     DOUT    => saidaRegA, 
				   		  ENABLE  => habilitaA , 
				   		  CLK     => CLK, 
				   		  RST     => '0');

-- O port map completo do Program Counter.
PC      : entity work.registradorGenerico   generic map (larguraDados => larguraEndereco)
            port map (DIN      => saidaMuxPC, 
						    DOUT     => saidaPC, 
						    ENABLE   => '1', 
						    CLK      => CLK, 
						    RST      => '0');

PC_INC   :  entity work.somaUm  generic map (larguraDados => larguraEndereco, constante => 1)
            port map(entrada   => saidaPC, 
							saida     => saidaInc);

END_RETORNO: entity work.registradorGenerico   generic map (larguraDados => larguraEndereco)
            port map (DIN      => saidaInc,
						    DOUT     => saidaRetorno, 
						    ENABLE   => habEscritaRetorno, 
						    CLK      => CLK, 
						    RST      => '0');

MUX_DESVIO :  entity work.muxGenerico4x1  generic map (larguraDados => larguraInstrucao-larguraOpCode)
             port map(entradaA_MUX => saidaInc,
                      entradaB_MUX => imediatoEndereco,
                      entradaC_MUX => saidaRetorno,
                      entradaD_MUX => "000000000",
                      seletor_MUX  => selDesvio,
                      saida_MUX    => saidaMuxPC);

-- O port map completo da ULA:
ULA    : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
            port map (entradaA  => saidaRegA, 
							 entradaB  => saidaMuxULA, 
							 saida     => saidaOperacaoULA,
							 flagEqual => saidaFlagULA,
							 seletor   => operacaoULA);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM    : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
            port map (Endereco => saidaPC, 
							 Dado     => instrucao);

DECODER : entity work.decoder
				port map (entrada  => opCode,
							 saida    => pontosControle);
							 
DESVIO : entity work.desvio
				port map (RET      => pontoRET,
						    JEQ      => pontoJEQ,
						    JSR      => pontoJSR,
						    JMP      => pontoJMP,
							 IGUAL    => saidaFlag,
							 saida    => selDesvio);

RAM     : entity work.memoriaRAM  generic map (dataWidth => larguraDados, addrWidth => larguraDados)
				port map (addr     => imediatoEndereco(7 downto 0),
							 we       => habilitaEscritaMEM,
							 re       => habilitaLeituraMEM,
							 habilita => imediatoEndereco(8),
							 clk      => CLK,
							 dado_in  => saidaRegA,
							 dado_out => saidaDados);

-- flip flop para armazenar o resultado da comparacao
FLAG    : entity work.flipFlop
             port map (DIN     => saidaFlagULA, 
						     DOUT    => saidaFlag, 
				   		  ENABLE  => habilitaFlagIgual, 
				   		  CLK     => CLK, 
				   		  RST     => '0');
							 


habilita_flag <= habilitaFlagIgual;
PC_OUT <= saidaPC;
RESULTADO_ULA <= saidaOperacaoULA;
saidaFlag_H <= saidaFlag;
ACUMULADOR <= saidaRegA;
seletorDaULA <= operacaoULA;
entradaA_ULA <= saidaRegA;
entradaB_ULA <= saidaMuxULA;
vimediatoValor <= imediatoValor;
sel_mux_t <= selMux;

end architecture;