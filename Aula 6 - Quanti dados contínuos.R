#O professor de um curso de MBA deseja criar uma tabela de frequência
#para as notas de seus 60 alunos da disciplina de “Marketing Digital”.
#Depois, ele deseja criar uma tabela de frequência com dados agrupados
#em classes. As notas são as seguintes:

#70	70	71	71,5	71,2	80,9	88	73,4	74,8	91
#88,1	91	77,9	75	81,7	80,6	72,5	90	70,2	81,4
#72,6	71,2	78,6	79,3	89,4	82,5	90	90	78,6	77,4
#71,2	76,4	79,8	80,8	85,3	89,7	90	90	90	88,2
#84,7	78,2	79,7	77,7	90	83,6	88,4	72,4	73	76,9
#74,6	73,5	78,9	82,4	90	70,2	70	89,3	81,9	72,6

# Etapa 1: tabular os dados brutos, armazenando-os em um vetor

notas = c(70, 70, 71, 71.5, 71.2, 80.9, 88, 73.4, 74.8, 91,
          88.1, 91, 77.9, 75, 81.7, 80.6, 72.5, 90, 70.2, 81.4,
          72.6, 71.2, 78.6, 79.3, 89.4, 82.5, 90, 90, 78.6, 77.4,
          71.2, 76.4, 79.8, 80.8, 85.3, 89.7, 90, 90, 90, 88.2,
          84.7, 78.2, 79.7, 77.7, 90, 83.6, 88.4, 72.4, 73, 76.9,
          74.6, 73.5, 78.9, 82.4, 90, 70.2, 70, 89.3, 81.9, 72.6)
          
notas
str(notas)

# Etapa 2: instalar (se necessário) e carregar o pacote epiDisplay

if(!require(epiDisplay)) install.packages("epiDisplay")
library(epiDisplay)

# Etapa 3: criar a tabela desejada

t_notas = tab1(notas, sort.group = "decreasing", 
                    cum.percent = TRUE, graph = FALSE)
t_notas


# Extra: criando uma tabela para dados agrupados em classes

# A) Cálculo do número de classes (k_notas) pela regra de Sturges

# k_notas == 1 + 3,322(log10(n)) -> Em que n é o tamanho da amostra

# No exemplo, há 60 respondentes. Logo: n == 60

# Usando a regra de Sturges:

k_notas = 1 + (3.322 * log10(60))
k_notas

# Serão usadas 7 classes

# B) Cálculo do intervalo de classes (h_notas) pela fórmula:

# h_notas == A/k_notas; em que A == amplitude de classe

amplitude_notas = max(notas) - min(notas)
amplitude_notas

h_notas = amplitude_notas/7
h_notas

# O valor da amplitude deve ser arredondado para o maior número inteiro:

#h_notas = 3

# C) Criando a tabela, considerando 7 classes e intervalo de classe de 3:

# Criando um objeto para armazenar os intervalos de classes

i_notas = seq(from = min(notas), to = max(notas), by = 3)
i_notas

# Criando outro objeto com os intervalos

c_notas = cut(notas, breaks = i_notas, right = FALSE, 
              include.lowest = TRUE)
c_notas

# Criando a tabela com os intervalos de classe

table(c_notas)

# Melhorando o visual da tabela

cbind(table(c_notas))

# Inserindo título na coluna de frequências absolutas

titulo_notas = cbind(table(c_notas))
colnames(titulo_notas) = c("Frequência Absoluta (fi) das Notas")
titulo_notas
