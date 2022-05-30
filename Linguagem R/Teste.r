install.packages("pandas")
install.packages("tidyverse")

setwd("C:/Users/richard.batista/Desktop/Estudo/Planilha_Marilan")

df <- read.csv("Biscoitos.csv", header = TRUE )

View(df)

install.packages('dplyr')

df$FAMILIA
Col1 <- df[1]
Col2 <- df$MERCADO

class(df$MERCADO)

print(Col1)
