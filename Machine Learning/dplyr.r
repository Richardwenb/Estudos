# #Funções

# mutate() #adiciona novas variaveis 
# select() #seleciona variaveis conforme o nome
# filter() #faz filtros com base nos valores
# summarise() #Faz média de valores conforme a média
# arrange() #ajusta a ordem das coisas

setwd("C:/Users/richard.batista/Desktop/Estudo/Machine Learning")

df <- read.csv("FipePrevAjustada.csv", header = TRUE)

View(df)


#Média de preço dos carros por 0km  por marca

?filter
?group_by
?summarise

MediaMarca <- df %>%
    filter(Ano_modelo == "Zero KM") %>%