#Tipos de Dados do R

Salario <- 3450.89
horas <- 220

SH <- Salario/horas #Divisão de duas variaveis 
SH
SHI <- as.integer(Salario/horas) #as.integer traz o valor inteiro da divisão
SHI #Print do valor da divisão
SHI * 5 #Multiplicando o valor da divisão

Numeros1 <- Salario + horas
Numeros1

Numeros2 <- c(Salario, horas)
Numeros2


#Armazenamento Numéricos

Nome_1 <- "Eduardo Abreu" #Atribuindo valor string a variavel
Nome_2 <- "Amanda Lopes" #Atribuindo valor string a variavel
Idade <- "25" #Atribuindo valor string a variavel

Nomes <- c(Nome_1, Nome_2) #Unindo os nomes em um vetor
Nomes[1] #Printando somente o primeiro nome
Nomes[2] #Printando somente o segundo nome

Nome_1 == Nome_2 #Comparando as strings
Nome_1 != Nome_2 #Comparando as strings

#Armazenamento de Fatores

CargaHoraria <- c(220, 220, 150, 100, 100) #Vetor de tipo numérico
summary(CargaHoraria)

CargaHoraria <- as.factor(CargaHoraria) #as.factor transforma o tipo da variavel em fator(Classifica a quantidade e o tipo de dados)
summary(CargaHoraria)
mode(CargaHoraria) #mode verifica o modo de armazenamento da variavel
class(CargaHoraria) #verifica o tipo da variavel

#Armazenamento Lógico
L1 <- Salario
L2 <- horas
L1 <- Salario > horas
L1

L2 <- salario < horas
L2

#Valor lógico de TRUE É 1 e o valor lógico de FALSE é 0

Logico <- TRUE #Variavel com valor lógico
Logico1 <- "TRUE" #Variavel com valor string
Logico2 <- c(1,TRUE,3) #Variavel com valor numérico
Logico2

#Vetores, Estrutura básica de dados
#Sequencia de dados do mesmo tipo

#vetor de caracteres
Nomes <- c("Eduardo", "Rafaela", "Anderson")
is.vector(Nomes) #is.vector confere o tipo da variavel
mode(Nomes)

#vetor numérico
is.vector(horas)
mode(horas)

#vetor lógico

is.vector(L1)
mode(L1)

#Tipos de listas (Vetor com tipo de dados diferentes)

a <- c(1,2,3,4,5)  #Fica como vetor numérico
b <- c(1,"2",3,4,5) #Fica como vetor de caracteres
a
b <- as.numeric(b) #Transforma caracter em numerico

is.list(a)
is.list(b)

b <- list(10,"2",8) #List serve para criar uma lista
is.list(b) #Printando 3 variaveis, 2 numéricas e um caracter
mode(b)
str(b)

e <- list(c(10,6,51,5,"2",8))
str(e)
e[[1]][1] #e[[1]]1] Pega a posição 1 e o valor 1

#Matrizes -  Duas dimensões um tipo de dado

m <- matrix(1:9, nrow = 3) #matrix cria um Matriz, nrow cria as linhas 
m
mode(m)
class(m)

#m[Linhas,coluna]
m[1,3] #Buscando posição numero de linha 1 coluna 3
m
m[1,3] <- "a" #trocando valor numerico por caracter
m


