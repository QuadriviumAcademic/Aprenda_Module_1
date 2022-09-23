# Calcular a média aritmética, a mediana e a moda em linguagem R

# Procedimento 1: calcular a média e a moda com funções específicas

set.seed(123) # Gerador de números pseudoaleatórios. Torna o exemplo reproduzível.

valor = runif(750, min = 0, max = 1000) # Cria um vetor atômico com 750 dados aleatórios entre 0 e 1000
valor # Exibe os valores armazenados no vetor atômico

mean(valor) # Exibe a média dos dados armazenados no vetor atômico

median(valor) # Exibe a mediana dos dados armazenados neste vetor atômico


# Procedimentos para identificar a moda, se houver

tabela = table(valor) # Cria uma tabela de frequências com os dados do vetor atômico
tabela # Exibe a tabela. A moda será o valor com maior frequência absoluta.

# Encontrando a moda em outro vetor atômico

vetor = c(1, 1, 1, 1, 1, 2, 3, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 7, 8, 9, 9, 10)
vetor

tabela_2 = table(vetor) # Cria uma tabela de frequências com os dados do vetor atômico
tabela_2 # Exibe a tabela. A moda será o valor com maior frequência absoluta.


# Extra: mostrando média e mediana com um comando único

mean(valor)
median(valor)

summary(valor) 


