# #DataSet
# Fráficos
# Análise de dataset
# Manipulações com dplyr
# regressão linear
# Coeficiente de determinação R2 
# Regressão linear para ML
# Árvore de Descisão

### Dataset ###

install.packages(c("ggplot2", "plyr", "dplyr"))

library(ggplot2)

mpg
?mpg
View(mpg)

#Gerando um gráfico
ggplot(mpg, aes((displ, cty))) + #ggplot informa o datasete e aes informa os valores que existem no eixo x e eixo y # nolint
    geom_point() #Visualização de dados em um gráfico de dispersão


#Pacote para tratamento de dados
library(plyr)

carros <- rename(mpg, c("manufacturer" = "Marcas",
                         "displ" = "Cilindradas",
                         "cty" = "Consumo",
                         "drv" = "Tração",
                         "class" = "Tipo"))

names(mpg)
names(carros)


### Gráficos ###

#Consumo x Cilindradas
ggplot(carros, aes(Cilindradas, Consumo,
                    size = Tração,
                    color = Tipo)) +
    geom_point()

### Análise do Dataset ###
#gráfico de consumos 
carros$Consumo #Busca dados do consumo
summary(carros$Consumo) #Busca estatisticas sobre o consumo
table(carros$Consumo) #Puxando a tabela carros consumo
prop.table(table(carros$Consumo)) #Verifica os dados percentualmente
round(pro.table((carros$Consumo))*100) #Multiplicando por 100 e arredondando os dados
#Geração do gráfico de consumos
ggplot(carros, aes(Consumo)) + 
geom_histogram() #Verifica a quantidade de dados existente em uma unica variavel]

### Manipulação dom dplyr ###
#Trazendo a tabela e manipulando os dados conforme funções determinadas
library(dplyr)

#Apenas carros com consumo = 9
carros %>% filter(Consumo == 9) # Filtra somente carros com consumo == 9
View(carros %>% filter(Consumo == 9)) #Visualizando o filtro


m <- carros %>%
select(Marcas, Consumo) %>%
filter(Consumo <= 11)
View(m)

m %>% group_by(Marcas) %>% #agrupando as marcas
    tally() #traz a contagem dessas marcas e quantas vezes cada uma aparece

m %>% group_by(Marcas) %>% #Agrupando as marcas
    summarise(mean(Consumo)) #gerando a média de consumo de cada marca

# B.I x Ciência de Dados

### Regressão Linear
### Coeficiente de determinação R2
### Regressão Linear para ML
### Árvore de Decisão

#Consumo x Cilindradas x Tipo x Tração
#Criando gráfico para Tipo, tração, cilindrada e consumo e mostrando resultados de cada um(Comparativos)
ggplot(carros, aes(Cilindradas, Consumo)) + #Trazenndo gráfico
    geom_point(aes(size = Tração, color = Tipo)) +  #Tarzendo tração e tipo
    geom_smooth(method = "lm") # adicionando um metódo LM a função

#Novo dataset
peso <- c(45, 50, 60, 55, 58, 56, 48, 53)
altura <- c(54, 56, 65, 60, 65, 63, 58, 59)

#Gráfico
plot(peso, altura) #Criando gráfico de peso e altura

#Regressão
lm(altura ~ peso) # Componentes linear e angular 

# y = m*x + b
# Resultado - b - coeficiente linear = 1.200575 >- x = 0
#             m - coeficinete angular = 0.007519 -> Inclinação da  reta

#inserindo a reta no gráfico
abline(1.200575, 0.007519) #Traçando reta linear no gráfico

#inserindo a reta no gráfico
abline(lm(altura ~ peso)) #Traçando reta linear no gráfico

#Gráfico com ggplot2
ggplot(mapping = aes(peso, altura)) +
    geom_point() +
    geom_smooth(method = "lm") # ADICIONANDO A RETA MAIS BONITINHA

#Exemplo de outro gráfico
# graph <- ggplot(mtcars, aes(x=as.factor(cyl) )) +
#   geom_bar(color="blue", fill=rgb(0.1,0.4,0.5,0.7) )

View(graph)
#Coeficiente de determinação R2
#Reta média
retas <- ggplot2(mapping = aes(peso, altura)) +
    geom_point() +
    geom_smooth(se = FALSE, method = "lm") +
    geom_hline(yintercept = mean(altura))

retas
mean(altura)
