#Condicoes While, For, If e ifelse

# Se algo é verdade ele faz a condição
if (5 == 5) 6 + 6

if (5 == 7) 6 + 6 else "Condição não atendida"

if (5 == 7) 6 + 6 else "Condição não atendida"
#Melhores práticas

if (5 == 7) {
    6 + 6
} else {
   "Condição não Atendida"
}

#Exemplo

idade <- c(25,30) # definindo o valor das posições
nomes <- c("Joao", "Caina") # Definindo o nome das posições
df <- data.frame(nomes, idade) #Criando um data frame com as posições
if (df$idade[df$nomes == "Joao"] > df$idade[df$nomes == "Caina"]) {     #Faz a comparação de idade, se a idade de João for mais que a de Caina ele printa Mais velho João, se não printa mais velho Caina
    "Mais velho: Joao"
} else {
   "Mais velho: Caina"
}

idade <- c(25, 30, 24, 29, 31, 12)
nomes <- c("Joao", "Caina", "Maria", "Leo", "Lia", "Enzo")
df <- data.frame(nomes, idade)

#para cada posilção faça isso
for (i in idade){ # printando todas posições com o for
    print(i)
}

#Exemplo para verificar as variaveis

v <- 0
for (i in df$idade){ #Verificando posição por posição e armazenando os valores na variavel V
    if (i > v) (v <- i) 
}
print(v)

# Enquanto algo for verdade eu faço uma ação

x <- 0
while (x < 10){ 
    print(x)
    x <- x + 1 #Criando um contador até 10 e somando mais um cada vez que passa
}

#Exemplo não pertimir que as somas das idades seja maior que 100

y <- 0
x <- 0
cont <- 0
idade100 <- 0

while (y < 100) { #Verifica as idades e soma elas até chegar em 100
    cont <- cont + 1
    idade100[cont] <- idade[cont]
    x <- x + idade[cont]
    y <- x + idade[cont + 1]
}

idade
idade100
sum(idade100)
