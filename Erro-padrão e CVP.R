# Erro-padrão da média e coeficiente de variação em linguagem R

# Erro-padrão da média (SE ou SEM)

set.seed(123) # Torna o exemplo reproduzível

populacao = runif(10000, min = 0, max = 1000000) # Cria um vetor atômico com os dados populacionais
populacao # Exibe parte dos valores armazenados no vetor atômico

amostra_10 = sample(populacao, size = 10) # Extrai uma amostra aleatória sem reposição do vetor atômico
amostra_10

amostra_100 = sample(populacao, size = 100)
amostra_100

amostra_1000 = sample(populacao, size = 1000)
amostra_1000

amostra_5000 = sample(populacao, size = 5000)
amostra_5000

if(!require(plotrix)) install.packages("plotrix") # Instala (se necessário) e carrega o pacote "plotrix"
library(plotrix)

std.error(amostra_10)
std.error(amostra_100)
std.error(amostra_1000)
std.error(amostra_5000)


# Coeficiente de variação percentual

vetor_cv = seq(1, 100, by = 1.5) # Cria um vetor atômico com uma sequência de dados de 1 a 100
vetor_cv

mean(vetor_cv) # Calcula a média do vetor atômico
sd(vetor_cv) # Calcula o desvio-padrão do vetor atômico

cvp = (sd(vetor_cv) / mean(vetor_cv)) * 100 # Calcula o coeficiente de variação percentual
cvp


