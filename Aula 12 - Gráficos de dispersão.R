# Gráficos de dispersão (scatterplots) no R

# Etapa 1: criar uma base de dados fictícia com valores aleatórios

set.seed(123) # Gerador de números pseudoaleatórios. Mantém os mesmos valores

temperatura_dia = runif(50, min=0, max=45) # Sorteia 50 valores entre 0 e 45.
temperatura_dia

vendas_sorvete_dia = floor(runif(50, min = 0, max = 250)) # Sorteia 50 valores inteiros entre 0 e 250
vendas_sorvete_dia

dados_sorvete = data.frame(temperatura_dia, vendas_sorvete_dia)
dados_sorvete


# Etapa 2: plotar o gráfico de dispersão

dev.off()
plot(dados_sorvete$temperatura_dia, dados_sorvete$vendas_sorvete_dia, 
     main = "Relação entre temperatura (em Celsius) e vendas diárias de sorvete (em unidades)", 
     xlab = "Temperatura (em Celsius)", ylab = "Vendas unitárias de sorvete", pch = 19)

# Extra: acrescentar linhas de tendência no gráfico de dispersão

dev.off()
plot(dados_sorvete$temperatura_dia, dados_sorvete$vendas_sorvete_dia, 
     main = "Relação entre temperatura (em Celsius) e vendas diárias de sorvete (em unidades)", 
     xlab = "Temperatura (em Celsius)", ylab = "Vendas unitárias de sorvete", pch = 19) +
        abline(lm(dados_sorvete$vendas_sorvete_dia ~ dados_sorvete$temperatura_dia),
               col = "red") # Acrescenta uma linha de tendência vermelha

