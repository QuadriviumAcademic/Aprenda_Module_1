# Gráfico de linhas no R

# Exemplo: analisando a taxa de inflação

# Etapa 1: instalar (se necessário) e carregar o pacote "BETS"

if(!require(BETS)) install.packages("BETS")
library(BETS)


# Etapa 2: coletar os dados sobre a inflação brasileira

inflacao = BETSget(433)
inflacao


# Etapa 3: plotar o gráfico de linhas

dev.off()
plot(inflacao, type = "l", col = "darkblue",
     main = "Taxas mensais de inflação no Brasil (1980 - 2021)",
     xlab = "Anos",
     ylab = "Taxa mensal de inflação (em %)")

gdp_accum = BETSget(4192)
window(gdp_accum, start = c(2014,1))
