#Data Frame

#Definir area de trabalho
setwd("C:/Users/richard.batista/Documents/DidaticaTech") #Definição de diretório que esta trabalhando # nolint

#Importando base de dados
df <- read.csv("teste.csv") #importando arquivo csv


#Analisando um Dataframe
View(df)

#Tipo de dados
str(df)
summary(df)

#Selecionando Variáveis
df #Traz o dataframe todo
df[1] #Traz a primeira coluna ou outras dependendo do numero adicionado
df $Cidade

Col1 <- df[1]
Col2 <- df$Cidade

class(df$Cidade)
class(Col2)
class(Col1)

#Modificando o DF

df $UP$
summary(df $UP$)
df $UP <- as.factor(df $UP)
df $UP
summary(df$UP)

#Criando uma nova variável dentro do df

df $Nova <- "a"
class(df$Nova)
df$Nova <- c(2,5,10)
df$Nova <- NULL
df$Nova <- NA
df$Nova[1:3] <- c(2,5,10)
class(df$Nova)
