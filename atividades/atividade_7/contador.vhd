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
  port   (
    
   
	 
	 -- simulacao
	 CLOCK_50      : in std_logic;
	 clovis        : in std_logic
  );
end entity;


architecture arquitetura of contador is
  -- ideia colocar os nomes dos sinais como a saida dos modulos
  signal instrucao          : std_logic_vector(larguraInstrucao-1 downto 0); -- saida da ROM
  
  -- saida RAM
  signal dadoLido           : std_logic_vector(larguraDados-1 downto 0);    -- saida da leitura da RAM
  
  -- CPU Data adress
  signal dataAddress        : std_logic_vector(larguraEndereco-1 downto 0);  
  alias  entradaDecoderWR   : std_logic_vector(2 downto 0) is dataAddress(larguraEndereco-1 downto larguraEndereco-3);   
  alias  enderecoRAM        : std_logic_vector(addrWidth-1 downto 0) is dataAddress(larguraEndereco-4 downto 0);   

  -- CPU Escrita de dados
  signal dadoEscrito        : std_logic_vector(larguraDados-1 downto 0);  
  
  -- ROM Adress
  signal ROMAddress         : std_logic_vector(larguraEndereco-1 downto 0); -- entrada da ROM

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
            port map (Endereco => , 
							 Dado     => );

RAM     : entity work.memoriaRAM  generic map (dataWidth => larguraDados, addrWidth => larguraDados)
				port map (addr     => ,
							 we       => ,
							 re       => ,
							 habilita => ,
							 clk      => CLK,
							 dado_in  => ,
							 dado_out => );

CPU     : entity work.CPU
	         port map (instructionIn => ,
							 dataIn        =>,
							 control       =>,
							 ROMAddress    =>,
							 dataAddress   =>,
							 dataOut       =>,
							 CLK           =>);        

--Entradas							 
instrucao  <= instructionIn;

--Saidas
ROMAddress <= saidaPC;
dataAddress <= imediatoEndereco( addrWidth-1 downto 0);
dataOut    <= saidaRegA;
control(0) <= habilitaEscritaMEM;
control(1) <= habilitaLeituraMEM;


end architecture;