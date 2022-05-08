library ieee;
use ieee.std_logic_1164.all;

entity CPU_rm is
  -- Total de bits das entradas e saidas
  generic ( larguraDados     : natural := 8;
				larguraEndereco  : natural := 9;  
				larguraInstrucao : natural := 16;
				larguraOpCode    : natural := 4;
				addrWidth        : natural := 6;
				simulacao        : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
  
	 -- entradas CPU
	 dataIn        : in  std_logic_vector(larguraDados-1 downto 0);      -- barramento de dados - saida de dados da RAM e entrada de dados da CPU
	 instructionIn : in  std_logic_vector(larguraInstrucao-1 downto 0);  -- instrucao da memoria ROM

	 -- saidas CPU
	 control       : out std_logic_vector(larguraOpCode-1 downto 0);     -- rd + wr + reset + clk
	 ROMAddress    : out std_logic_vector(larguraEndereco-1 downto 0);   -- endereco da instrucao da ROM
	 dataAddress   : out std_logic_vector(larguraEndereco-1 downto 0);   -- barramento  de enderecos da RAM
	 dataOut       : out std_logic_vector(larguraDados-1 downto 0);      -- barramento de escrita de dados - entrada de dados da RAM
	 bancoSaida    : out std_logic_vector(larguraDados-1 downto 0);
	 
	 -- fins de debug
--	 flag : out std_logic;
--	 habFlaguinha : out std_logic;
--	 
--	 ulabin, ulaout : out std_logic_vector(larguraDados-1 downto 0);
	 
	
	 
	 -- simulacao
	 CLK           : in std_logic
  );
end entity;


architecture arquitetura of CPU_rm is
  -- ideia colocar os nomes dos sinais como a saida dos modulos

  -- MUX ULA
  signal saidaMuxULA        : std_logic_vector (larguraDados-1 downto 0);                         

  -- MUX DESVIO
  signal saidaMuxPC         : std_logic_vector (larguraEndereco-1 downto 0);        

  -- ULA
  signal saidaOperacaoULA   : std_logic_vector (larguraDados-1 downto 0);                        
  signal saidaFlagULA       : std_logic; -- saida da ULA que alimenta a flag igual                

  -- Flp Flop FLAG
  signal saidaFlag          : std_logic;                                                          

  -- Banco de registradores
  signal saidaBanco         : std_logic_vector (larguraDados-1 downto 0);                         

  -- Logica de Desvio
  signal selDesvio			 : std_logic_vector(1 downto 0);                                         

  -- Unidade de controle tenho 12 pontos
  signal pontosControle     : std_logic_vector (11 downto 0);                                    
  alias habilitaEscritaMEM  : std_logic is pontosControle(0);
  alias habilitaLeituraMEM  : std_logic is pontosControle(1);
  alias habilitaFlagIgual   : std_logic is pontosControle(2);                                                       
  alias operacaoULA         : std_logic_vector(1 downto 0) is pontosControle(4 downto 3);                           
  alias habilitaBanco       : std_logic is pontosControle(5);                                                          
  alias selMux              : std_logic is pontosControle(6);                                                           
  alias pontoJEQ            : std_logic is pontosControle(7);                                                          
  alias pontoJSR            : std_logic is pontosControle(8);                                                           
  alias pontoRET            : std_logic is pontosControle(9);                                                           
  alias pontoJMP            : std_logic is pontosControle(10);                                                           
  alias habEscritaRetorno   : std_logic is pontosControle(11);                                                           

  -- RAM
  signal saidaDados 			 : std_logic_vector(larguraDados-1 downto 0);                           

  -- PC
  signal saidaPC            : std_logic_vector (larguraEndereco-1 downto 0);        

  -- Soma constante
  signal saidaInc           : std_logic_vector (larguraEndereco-1 downto 0);       
 
  -- Retorno
  signal saidaRetorno       : std_logic_vector(larguraEndereco-1 downto 0);                       
  
  -- Clock
  --signal CLK                : std_logic;
  
  -- Instrucao
  signal instrucao          : std_logic_vector(larguraInstrucao-1 downto 0);  
  alias  opCode             : std_logic_vector(3 downto 0) is instrucao(15 downto 12); 
  alias  endReg             : std_logic_vector(2 downto 0) is instrucao(11 downto 9);  
  alias  imediatoEndRAM   : std_logic_vector(8 downto 0) is instrucao(8 downto 0);                -- imediato endereco RAM
  alias  imediatoValor      : std_logic_vector(7 downto 0) is instrucao(7 downto 0);              -- imediato valor
  alias  imediatoEndROM       : std_logic_vector(8 downto 0) is instrucao(8 downto 0);            -- imediato endereco ROM

begin

-- Instanciando os componentes:


-- Banco com 8 registradores
BANCO_REG : entity work.bancoRegistradoresArqRegMem   generic map (larguraDados => larguraDados, larguraEndBancoRegs => 3)
				 port map (   clk => CLK,
								  endereco => endReg,
								  dadoEscrita => saidaOperacaoULA,
								  habilitaEscrita => habilitaBanco,
								  saida  => saidaBanco);

-- O port map completo do MUX.
MUX_ULA    :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
             port map(entradaA_MUX => dataIn,
                      entradaB_MUX => imediatoValor,
                      seletor_MUX  => selMux,
                      saida_MUX    => saidaMuxULA);

-- O port map completo do Acumulador.
--REG_A    : entity work.registradorGenerico  generic map (larguraDados => larguraDados)
--             port map (DIN     => saidaOperacaoULA, 
--						     DOUT    => saidaRegA, 
--				   		  ENABLE  => habilitaA , 
--				   		  CLK     => CLK, 
--				   		  RST     => '0');

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

MUX_DESVIO :  entity work.muxGenerico4x1  generic map (larguraDados => larguraEndereco)
             port map(entradaA_MUX => saidaInc,
                      entradaB_MUX => imediatoEndRAM,
                      entradaC_MUX => saidaRetorno,
                      entradaD_MUX => "000000000",
                      seletor_MUX  => selDesvio,
                      saida_MUX    => saidaMuxPC);

-- O port map completo da ULA:
ULA    : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
            port map (entradaA  => saidaBanco, 
							 entradaB  => saidaMuxULA, 
							 saida     => saidaOperacaoULA,
							 flagEqual => saidaFlagULA,
							 seletor   => operacaoULA);


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

-- flip flop para armazenar o resultado da comparacao
FLAGer    : entity work.flipFlop
             port map (DIN     => saidaFlagULA, 
						     DOUT    => saidaFlag, 
				   		  ENABLE  => habilitaFlagIgual, 
				   		  CLK     => CLK, 
				   		  RST     => '0');
--Entradas							 
instrucao  <= instructionIn;

--Saidas
ROMAddress <= saidaPC;
dataAddress <= imediatoEndRAM( larguraEndereco-1 downto 0);
dataOut    <= saidaBanco;
control(0) <= habilitaEscritaMEM;
control(1) <= habilitaLeituraMEM;

-- DEBUG
--flag <= saidaFlag;
--habFlaguinha <= habilitaFlagIgual;
--
--ulabin <= saidaMuxULA;
--ulaout <= saidaOperacaoULA;
bancoSaida <= saidaBanco;

end architecture;