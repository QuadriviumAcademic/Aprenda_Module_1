# O analista de marketing de uma empresa aplicou 
#um questionário em 50 consumidores com a seguinte pergunta: “Qual nota 
#você daria ao nosso produto Desodorante Cheiroso, 
#em uma escala de zero (pior) a 10 (melhor)?” 
#Os resultados estão exibidos abaixo e você deve transformá-los 
#em uma tabela de frequência.

#7	4	6	6	6	8	3	0	1	1
#9	9	9	4	4	3	2	1	7	8
#9	10	8	7	7	6	4	1	1	3
#4	5	4	10	9	8	6	10	3	3
#4	5	6	6	7	9	10	8	2	2


# Etapa 1: tabular os dados brutos, armazenando-os em um vetor

satisfacao = c(7, 4, 6, 6, 6, 8, 3, 0, 1, 1, 9, 9, 9, 4, 4, 3, 2, 1, 7, 8,
               9, 10, 8, 7, 7, 6, 4, 1, 1, 3, 4, 5, 4, 10, 9, 8, 6, 10, 3, 3,
               4, 5, 6, 6, 7, 9, 10, 8, 2, 2)
satisfacao
str(satisfacao)

# Etapa 2: instalar (se necessário) e carregar o pacote epiDisplay

if(!require(epiDisplay)) install.packages("epiDisplay")
library(epiDisplay)

# Etapa 3: criar a tabela desejada

t_satisfacao = tab1(satisfacao, sort.group = "decreasing", 
              cum.percent = TRUE, graph = FALSE)
t_satisfacao


# Extra: criando uma tabela para dados agrupados em classes

# A) Cálculo do número de classes (k) pela regra de Sturges

# k == 1 + 3,322(log10(n)) -> Em que n é o tamanho da amostra

# No exemplo, há 50 respondentes. Logo: n == 50

# Usando a regra de Sturges:

k = 1 + (3.322 * log10(50))
k
# Serão usadas 7 classes

# B) Cálculo do intervalo de classes (h) pela fórmula:

# h == A/k; em que A == amplitude de classe

amplitude = max(satisfacao) - min(satisfacao)
amplitude

h = amplitude/7
h
# O valor da amplitude deve ser arredondado para o maior número inteiro:

#h = 2

# C) Criando a tabela, considerando 7 classes e intervalo de classe de 2:

# Criando um objeto para armazenar os intervalos de classes

intervalo = seq(from = min(satisfacao), to = max(satisfacao), by = 2)
intervalo

# Criando outro objeto com os intervalos

classes = cut(satisfacao, breaks = intervalo, right = FALSE, 
          include.lowest = TRUE)
classes

# Criando a tabela com os intervalos de classe

table(classes)

# Melhorando o visual da tabela

cbind(table(classes))

# Inserindo título na coluna de frequências absolutas

titulo = cbind(table(classes))
colnames(titulo) = c("Frequência Absoluta (fi)")
titulo