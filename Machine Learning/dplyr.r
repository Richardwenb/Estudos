# #Funções

# mutate() #adiciona novas variaveis 
# select() #seleciona variaveis conforme o nome
# filter() #faz filtros com base nos valores
# summarise() #Faz média de valores conforme a média
# arrange() #ajusta a ordem das coisas

setwd("C:/Users/richard.batista/Desktop/Estudo/Machine Learning")

df <- read.csv("FipePrevAjustada.csv", header = TRUE)

View(df)

install.packages("dplyr")
#Média de preço dos carros por 0km  por marca

?filter
?group_by
?summarise

MediaMarca <- df %>% #verificnado a média da marca
    dplyr::filter(Ano_modelo == "Zero KM") %>% #filtrando somente os carros zero km
    dplyr::group_by(Marca) %>%
    dplyr::summarise(mean(preço)) #reduzindo a média do preço

View(MediaMarca)
