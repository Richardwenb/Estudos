#Simples DevMedia
nome <- "Richard Wendel Batista"
cidade <- "Marília"
estado <- "São Paulo"

nchar(nome) #conta o numero de caracteres dentro de uma variavel

paste(cidade, "/", estado)
paste0(cidade,estado)


vetor <- c(20, 40, 31, 45, 56, 62)
vetor + 1

valor_negativo <- vetor - 1
valor_negativo

vetor[1]
vetor[6]

vetor1 <- c("Maça", "Uva", "Abacaxi")
length(vetor1)
paste("eu gosto de ", vetor1)

vetor2 <- c(1, 1, 2)
vetor3 <- c(32, 23, 47, 31, 56)

soma <- vetor2 + vetor3
soma


coersao <- c(1, "Banana", 2)
coersao
sum(1:100)


segredo <- round(runif(1, min = 0, max = 10))
segredo >= 0

segredo <= 10

segredo > 5

idade <- c(20)

segredo * 5

idade <= segredo

segredo == c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

vetor <- c(4, 8, 15, 16, 23, 42)

for (i in vetor) {
    if (i < 10)
        print(i)
}

numeros <- -4:2

for (i in numeros){
    if (i > 0)
    print(i)
}

for (i in numeros) {
    if (i ** 2 == 4)
    print(i)
}

for (i in numeros) {
    if (i %% 2 == 0)
    print(i)
}

b <- c(1, 0, NA, NA, NA, NA, 7, NA, NA, NA, NA, NA, 2, NA, NA, 10, 1, 1, NA)

for (i in b) {
    if (i != 1)
    print(i)
}
