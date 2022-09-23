#Criando data frames em linguagem R

#Exemplo do slide de aula

#Observação	Altura
#               (em cm) Nome	Empregado?
#       1	180	João	Não
#       2	185	Pedro	Sim
#       3	190	André	Sim
#       4	175	Tiago	Sim

#1.1) Criando os vetores e fatores

observacao = seq(1,4)
observacao

alturacm = c(180, 185, 190, 175)
alturacm

nomedata = c("João", "Pedro", "André", "Tiago")
nomedata
nomedatafator = factor(nomedata)
is.factor(nomedatafator)

empregadodata = c("Não", "Sim", "Sim", "Sim")
empregadodata
empregadodatafator = factor(empregadodata)
is.factor(empregadodatafator)


#1.2) Criando o data frame com vetores e fatores

basededados = data.frame(observacao, alturacm, nomedatafator, empregadodatafator)
basededados


#1.3) Usando subscritos em data frames

basededados[3, 3]
basededados[2, 4]

basededados[-2] #Exclui a segunda coluna do data frame

