as.list(airquality)
head(airquality)
class(airquality$Ozone)

Lista <- airquality[, 1]
Lista

colMeans(airquality$Ozone)
