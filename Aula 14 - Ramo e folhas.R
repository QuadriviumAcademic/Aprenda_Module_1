# Gráfico ramo-e-folhas (stem-and-leaf) no R

# Exemplo 1

# Etapa 1: criar um vetor atômico com temperaturas aleatórias

set.seed(123) # Gerador de números pseudoaleatórios para manter os mesmos valores

temp_aleat = floor(runif(100, min=10, max=33)) # Gera 100 medições aleatórias entre 10 e 33 graus
temp_aleat

# Etapa 2: plotar o gráfico ramo-e-folhas

stem(temp_aleat, scale = 2)


# Exemplo 2

# Etapa 1: criar um vetor atômico com temperaturas aleatórias e com apenas 1 casa decimal

set.seed(123) # Gerador de números pseudoaleatórios para manter os mesmos valores

temp_aleat = runif(100, min=10, max=33) # Gera 100 medições aleatórias entre 10 e 33 graus
temp_aleat_arred = round(temp_aleat, digits = 1) # Arredonda os valores para 1 casa decimal
temp_aleat_arred

# Etapa 2: plotar o gráfico ramo-e-folhas

stem(temp_aleat_arred, scale = 2)


# Exemplo 3

# Etapa 1: criar um vetor atômico

dados = c(12, 15, 16, 21, 24, 29, 30, 31, 32, 33, 45, 46, 49, 50, 52, 58, 60, 63, 64, 65)

# Etapa 2: plotar o gráfico ramo-e-folhas

stem(dados, scale = 2)
