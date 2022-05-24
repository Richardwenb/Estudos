vogais <- c("a", "e", "i", "o", "u")

#Chamar por uma posição
vogais[3]

#Excluir uma posição
vogais[-3]

#Chamar posição 3 a 5
vogais[3:5]

length(vogais) #Lenght funciona como o X para trazer posições, ela percorre toda a lista
vogais[3:length(vogais)] # Traz da posição 3 até a ultima
vogais[(length(vogais)-2):length(vogais)] # Traz as ultimas posições da lista

#Dados considerando outras variáveis
a <- 3
b <- 5
vogais[a:b] #Outra forma de puxar o mesmo valor de vogais

#Acessar atraves de condições
vogais == "e" # busca a posição TRUE na lista
vogais[vogais == "e"] #Printa o valor se caso ele existir na lista
vogais[vogais != "e"] #Retira a variavel diferente

a <- c(1, 2, 3, 4, 5)
a[a > 2] #conferindo as posições e retornando tudo que for maior que 2
a[a >= 2] #Retorna tudo que for maior ou igual a 2

#Trabalhando com dataFrames

setwd("C:/Users/richard.batista/Documents/DidaticaTech")
df <- read.csv("teste.csv")

#Função seria df[linha.coluna]
df[1] #Traz a primeira coluna
df[1,] #Traz a primeira linha filtrado

df[1:6] #Traz a coluna 1 até a 6
df[-4] #Excluiu uma coluna

df[1,1] # Traz a primeira linha da primeira coluna
df[1,1:6] #Traz a primeira linha das colunas 1 até 6
df[1,-4] #Traz a primeira linha e exclui a primeira linha da coluna 4

#Modificando o df

df <- df[c(-3, -4, -5, -6)] #Exclui as colunas com sinal de subtração na frente

#Filtrando as variáveis
df[1,1] #Posição 1 da variavel 1
df $Cidade[1] #Puxa a primeira linha da coluna Cidade
df $Cidade [2:4] #Puxa os valores de 2 a 4
df $Cidade == 1 #Puxa somente o conteúdo que é uigual a 1
df [df $Cidade == 1,] #puxa somente a linha que for igual a 1

df <- df[df $Cidade == 1,]

#Df x Df1 comparando as mudanças

df1 <- read.csv("teste.csv")
View(df1)
View(df)

