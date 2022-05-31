as.list(airquality)
head(airquality)
class(airquality$Ozone)

Lista <- airquality[, 1]
Lista

df2 <- na.omit(Lista)
df2
mean(df2)

elevado <- (df2 ^ 2)
