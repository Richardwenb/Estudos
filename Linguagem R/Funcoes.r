#Criação de Funções

a <- c(423, 464, 69, 519, 123, 258)

#solução

x <- 0 
for (i in a){ # passando por toda lista e somando os valores
    x <- x + i
}
print(x)

# e a soma dos valores de b ?

b <- c(51, 36, 123, 98, 23, 37, 63, 3)

x <- 0
for (i in b){
    x <- x + i
}
print(x)

#Precisando realizar 50 somas no código ?

soma <- function (y) { # Function serve para criar a própria função
    x <- 0
    for (i in y) {
        x <- x + i
    }
    print(x)
}
soma(a)
soma(b)


soma2 <- function (y,z)
    x <- 0
    c <- 0
    for (i in y) {
        c <- c + 1
        x <- z(c) + i
        print(x)
    }
soma2(a,b)
soma2(b,a)

#Precisavamos criar essas funções ?

a + b
sum(a) #sum soma os valores da lista/vetor/matriz toda
sum(b)