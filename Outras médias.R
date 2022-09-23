# Cálculo de outras médias em linguagem R

# 1) Média ponderada


set.seed(123) # Torna o exemplo reproduzível

dados = runif(10, min = 1, max = 3000) # Cria um vetor atômico com 10 dados aleatórios entre 1 e 3.000
dados

pesos = floor(runif(10, min = 1, max = 10)) # Cria um vetor atômico com pesos de 1 a 10
pesos

if(!require(stats)) install.packages("stats") # Instala (se necessário) e carrega o pacote "stats"
library(stats)

media_ponderada = weighted.mean(dados, pesos)
media_ponderada


# 2) Média harmônica

if(!require(psych)) install.packages("psych") # Instala (se necessário) e carrega o pacote "psych"
library(psych)

harmonic.mean(dados) # Calcula a média harmônica dos dados do vetor atômico


# 3) Média geométrica

if(!require(psych)) install.packages("psych") # Instala (se necessário) e carrega o pacote "psych"
library(psych)

geometric.mean(dados) # Calcula a média geométrica dos dados do vetor atômico


# 4) Média quadrática (root mean square - RMS)

sqrt(mean(dados ^ 2))
