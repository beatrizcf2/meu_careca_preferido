''' 
$ - valor imediato ou label
% - end registrador
@ - endereco RAM
''' 

import sys

assembly = str(sys.argv[1]) #Arquivo de entrada de contem o assembly
destinoBIN = sys.argv[2] #Arquivo de saída que contem o binário formatado para VHDL


mne =	{ 
       "NOP":   "0000",
       "LDA":   "0001",
       "SOMA":  "0010",
       "SUB":   "0011",
       "LDI":   "0100",
       "STA":   "0101",
       "JMP":   "0110",
       "JEQ":   "0111",
       "CEQ":   "1000",
       "JSR":   "1001",
       "RET":   "1010",
}

reg = {
    "r0" : "0",
    "r1" : "1",
    "r2" : "2",
    "r3" : "3",
    "r4" : "4",
    "r5" : "5",
    "r6" : "6",
    "r7" : "7"
}

# formato instrucao 
# instrucao = opcode+endReg+imediato
# subconjunto: n bits
formatoInstrucao = {
    "opcode": 4, 
    "endReg": 3,
    "imediato": 9
}

labels = {}

def defineInstrucao(line):
    # remove o comentario, a virgula e separa a instrucao em partes
    line = line.split('#')
    line = line[0].replace(',', '')
    return line.split()

#Define a string que representa o comentário
#a partir do caractere cerquilha '#'
def defineComentario(line):
    if '#' in line:
        line = line.split('#')
        line = line[0] + "#" + line[1]
        return line
    else:
        return line
    
def  converteCifrao(line):
    # !!! precisa fazer verificacao de label
    line = line.split('$')
    # se for numero, é imediato de valor
    if line[1].isdigit():
        tipo = "imediato"
        line[1] = bin(int(line[1]))[2:].upper().zfill(formatoInstrucao[tipo])
        line = ''.join(line)
    else:
        tipo = "imediato"
        line[1] = '<'+line[1]+'>'
        line = ''.join(line)
        
    # se nao for numero nem label, é end de registrador
    # else:
    #     tipo = "endReg"
    #     line[1] = bin(int(reg[line[1]]))[2:].upper().zfill(formatoInstrucao[tipo])
    #     line = ''.join(line)
    return {tipo: line}
    
def convertePorcentagem(line):
    line = line.split('%')
    tipo = "endReg"
    line[1] = bin(int(reg[line[1]]))[2:].upper().zfill(formatoInstrucao[tipo])
    line = ''.join(line)
    return {tipo: line}
    
def salvaLabel(line):
    tipo = "imediato"
    line = line.split(':')
    labels[line[0]] = bin((n_linhas))[2:].upper().zfill(formatoInstrucao[tipo])
    
#Converte o valor após o caractere arroba '@'
#em um valor hexadecimal de 3 dígitos ( 9 bits)
def  converteArroba(line):
    line = line.split('@')
    tipo = "imediato"
    line[1] = bin(int(line[1]))[2:].upper().zfill(formatoInstrucao[tipo])
    line = ''.join(line)
    return {tipo: line}
    
#Consulta o dicionário e "converte" o mnemônico em
#seu respectivo valor em hexadecimal
def trataMnemonico(line):
    tipo = "opcode"
    line[0] = {tipo: mne[line[0]]}
    return line

def montaInstrucao(instrucao, comentario):
    #print(instrucao)
    dic = instrucao[0]
    opcode = dic["opcode"]
    
    if opcode == mne['NOP'] or opcode == mne['RET']: # quando e ret ou nop
        instrucao.append({"endReg":bin(int(0))[2:].upper().zfill(formatoInstrucao["endReg"])})
        instrucao.append({"imediato":bin(int(0))[2:].upper().zfill(formatoInstrucao["imediato"])})
    elif opcode == mne['JMP'] or opcode == mne['JSR'] or opcode == mne['JEQ']:
        instrucao.append({"endReg":bin(int(0))[2:].upper().zfill(formatoInstrucao["endReg"])})
    print(instrucao)
    inst = instrucao[0]["opcode"] + instrucao[1]["endReg"] + instrucao[2]["imediato"]
    line = 'tmp(' + str(n_linhas) + ') := "' + inst + '";\t-- ' + comentario + '\n'    #Formata para o arquivo BIN
                                                                                            #Entrada => 1. JSR @14 #comentario1
                                                                                            #Saída =>   1. tmp(0) := x"90E";	-- JSR @14 	#comentario1  
    return line
    



with open(assembly, "r") as f: #Abre o arquivo ASM
    lines = f.readlines() #Verifica a quantidade de linhas


with open(destinoBIN, "w") as f:  #Abre o destino BIN

    n_linhas = 0 # cria uma variavel para contagem das instrucoes

    for line in lines:

        # verifica se e comentario
        if (line.startswith('#')):
            line = line.split('#')
            line = "--" + line[1]
            f.write(line) #Escreve comentario no arquivo BIN.txt
            continue
        
        # verifica se e linha em branco
        if (line.startswith('\n')):
            f.write(line) #Escreve no arquivo BIN.txt
            continue

        #Define o comentário da linha. Ex: #comentario1
        comentario = defineComentario(line).replace("\n","") 
        
        #define o que e instrucao e o que e comentario
        instrucao = defineInstrucao(line) 
        if instrucao[0].endswith(':'):
            # print("opa e label")
            # print(n_linhas)
            salvaLabel(instrucao[0])
            continue
        
        # ANALISA PARTE A PARTE DA INSTRUCAO
        for i in range(len(instrucao)):
            # verifica se e label
            
            
            # trata mnemonico (smp primeira palavra)
            if i==0:
                instrucao = trataMnemonico(instrucao)
            # trata o resto
            elif instrucao[i].startswith('$'):
                instrucao[i] = converteCifrao(instrucao[i])
            elif instrucao[i].startswith('@'):
                instrucao[i] = converteArroba(instrucao[i])
            elif instrucao[i].startswith('%'):
                instrucao[i] = convertePorcentagem(instrucao[i])

        f.write(montaInstrucao(instrucao, comentario))
            
        # print(instrucao)
        n_linhas +=1

# with open(destinoBIN, "w") as f:
#instrucao = opcode + endReg + imediato 
# se 

print(labels)