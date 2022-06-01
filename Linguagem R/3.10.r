as.list(airquality)
head(airquality)
class(airquality$Ozone)

Lista <- airquality[, 1]
Lista

df2 <- na.omit(Lista)
df2
mean(df2)

elevado <- (df2 ^ 2)

mean(df2)

x <- 2
y <- 2
minha_soma <- function(x, y) {
  soma <- (x + y %% 2)
    soma
}
