#Estat�sitca B�sica

setwd("C:/Users/adoma/OneDrive/Documentos/PowerBI/Cap12/6-Vendas")
getwd()

conjunto  <- read.csv("Vendas.csv", sep=",", header=T, stringsAsFactors = T,na.strings = "", fileEncoding = "windows-1252")
head(conjunto)


#Chamando a mediana
colunasnome  <- colnames(conjunto)
colunasnome

#Pedindo sum�rio dos dados
sumar <- summary(conjunto)
sumar

#Mediana e M�dia de valor
medianaval <- median(conjunto$Valor)
medianaval #mediana
mediaval<- mean(conjunto$Valor)
mediaval # media

#vendo os tipos de dados
str(conjunto)

#M�dia Ponderada
weighted.mean(conjunto$Valor, w=conjunto$Custo)

#moda e frequencia: 54.9 moda e 6 frequ�ncia
resultado <- subset(table(conjunto$Valor), table(conjunto$Valor) ==max(table(conjunto$Valor)))
resultado

#moda e frequencia: 14.73 moda e 5 frequencia
novo <- subset(table(conjunto$Custo), table(conjunto$Custo) ==max(table(conjunto$Custo)))
novo

#install.packages("ggplot2")
library(ggplot2)
#gr�fico de barras de vendas m�dia por estado
ggplot(conjunto) + stat_summary(aes(x=Estado,
                                    y=Valor),
                                fun=mean,
                                geom="bar", 
                                fill="darkred",
                                col="grey50") + labs(title="M�dia de valor por estado")


#gr�fico de dispers�o
plot(jitter(conjunto$Valor), conjunto$Venda)

#variancia
var(conjunto$Valor, na.rm=T)

#desvio padrao
sd(conjunto$Valor, na.rm=T)

#Filtrando no summary
summary(conjunto[c("Valor", "Custo")])

#quartis
quantile(conjunto$Valor)

#percentil
quantile(conjunto$Valor, probs=c(0.1, 0.6))

#AIntervalo inter quartil
IQR(conjunto$Valor)

#range do miniimo ao maximo
range(conjunto$Valor)

#diferen�a do minimo ao maximo (max-min)
diff(range(conjunto$Valor))




