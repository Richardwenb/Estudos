as.list(airquality)
head(airquality)
class(airquality$Ozone)

Lista <- airquality[, 1]
Lista
class(Lista)

df2 <- na.omit(Lista)
df2
mean(df2)

elevado <- (df2 ^ 2)

x <- 4
if(x == 4) {
  TRUE
}

a = 10

b = 20

c = 30



ifelse( a < b, print('A é menor que B'))
ifelse( a > b, print('A é maior que B'))
ifelse( b < a, print('B é menor que A'))