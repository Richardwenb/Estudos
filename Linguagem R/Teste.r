#Data Frame

#Definir area de trabalho
setwd("C:/Users/richard.batista/Desktop/Estudo/Planilha_Marilan") #Definição de diretório que esta trabalhando # nolint

#Importando base de dados
df <- read.csv("Biscoitos.csv", header = TRUE) #importando arquivo csv

View(df)


install.packages("magrittr")
library(magrittr)
