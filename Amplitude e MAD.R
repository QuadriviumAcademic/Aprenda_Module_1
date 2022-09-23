# Calculando a amplitude e o desvio-médio em linguagem R

# Amplitude

set.seed(123) # Torna o exemplo reproduzível

vetor_dados = runif(15000, min = 0, max = 1000000) # Cria um vetor atômico com 15 mil dados aleatórios
vetor_dados # Exibe os valores armazenados no vetor atômico

amplitude = max(vetor_dados) - min(vetor_dados) #Calcula a diferença entre o valor máximo e mínimo
amplitude # Exibe a amplitude


# Desvio-médio (mean absolute deviation - MAD)

# Etapa 1: instala (se necessário) e carrega o pacote "ie2misc"

if(!require(ie2misc)) install.packages("ie2misc")
library(ie2misc)

# Etapa 2: calcula o MAD usando a função "madstat"

madstat(vetor_dados)
