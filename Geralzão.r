# Aula 1

a <- 10 #atribuição de valor a variavel
a #print da variavel

b = 10 #atribuição de valor a variavel
b  #print da variavel

c <- 10 #atribuição de valor a variavel

d <- a + b #soma das variaveis
d


a <- "Heitor" # Variavel com valor de character
b  <- "João" # Variavel com valor de character

c <- c(a,b) #Adicionando character a variavel c para criar um vetor
c

c <- c("Heitor", "João") # Criação de string direta em variavel
c

a <- c(10, 5, 15, 20) # Criando vetor com varios valores e atribuindo os mesmos a variavel
a[0:4] #Printando do 0 a 4 posição da variavel A

summary(a) #puxa toda a informação de uma variavel 
summary(b) #puxa toda a informação de uma variavel 

install.packages("stringr") # Install stringr R package
library("stringr")

Nome <- "João"
Sobrenome<- "Silva"

NomeCompleto <- str_c(Nome," ", Sobrenome) #Printando nome e sobrenome utilizando str_c
NomeCompleto



