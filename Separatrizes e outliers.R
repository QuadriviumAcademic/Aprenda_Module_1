# Separatrizes em linguagem R: quartis, decis e percentis

# Etapa 1: criar um vetor atômico com 500 valores inteiros e aleatórios

set.seed(123)
dados_separatrizes = floor(runif(500, min = 0, max = 2000))
dados_separatrizes


# Etapa 2: calcular os quartis com o comando "summary" 

summary(dados_separatrizes)


# Etapa 3: calcular os decis

quantile(dados_separatrizes, probs = seq(.1, .9, by = .1))


# Etapa 4: calcular os percentis

quantile(dados_separatrizes, probs = seq(.01, .99, by = .01))


# Aplicando as separatrizes para identificar outliers


# Etapa 1: criando um vetor atômico


set.seed(123) # Ativa o gerador de números pseudoaleatórios

dados_boxplot = rt(200, df = 3) # Cria um vetor atômico com 200 dados aleatórios retirados
                                # da distribuição t de Student e com três graus de liberdade


# Etapa 2: plota o boxplot com a identificação dos outliers severos e moderados

dev.off() # Encerra os gráficos abertos em outras instâncias do R

boxplot(dados_boxplot, outcol = "red", main = "Identificação de Outliers Extremos e Moderados",
        xlab = "Círculos cheios = outliers extremos. Círculos vazados = outliers moderados",
        ylab = "Valores aleatórios da distribuição t de Student", border = "black")
boxplot(dados_boxplot, add = TRUE, range = 3, col = "yellow",
        pars = list(outpch = 20, outcol = "red", whisklty = 0, staplelty = 0))
