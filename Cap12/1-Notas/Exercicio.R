setwd("C:/Users/adoma/OneDrive/Documentos/PowerBI/Cap12/1-Notas")
getwd()

turma <- read.csv("Notas.csv", sep=",", fileEncoding = "windows-1252", 
                  header=T, stringsAsFactors = T, na.strings = "")

head(turma)

#1 - Apresente um remo dos tipos de dados e estatisticas do dataset
summary(turma)
View(turma)
str(turma)

#2 - M�dia de cada turma
mean(turma$TurmaA)
mean(turma$TurmaB)

#3 Maior variabilidade de notas
sd(turma$TurmaA)
sd(turma$TurmaB)
#Foi na turma A pois o desvio padr�o � bem maior em rela��o a m�dia das notas

#4 - Coeficiente de varia��o das duas turmas
var(turma$TurmaA)
var(turma$TurmaB)

#5 - Nota que mais apareceu nas duas turmas
t1<- subset(table(turma$TurmaA), table(turma$TurmaA)==max(table(turma$TurmaA)))
t1
t2<-subset(table(turma$TurmaB), table(turma$TurmaB)==max(table(turma$TurmaB)))
t2