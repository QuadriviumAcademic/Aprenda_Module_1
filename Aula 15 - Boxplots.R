# Criando diagramas de caixa (boxplots) no R

# Etapa 1: acessando a base de dados pública "airquality" 

str(airquality)


# Etapa 2: criando um boxplot simples da variável níveis de ozônio

dev.off()
boxplot(airquality$Ozone)

# Etapa 3: melhorando o visual do boxplot

dev.off()
boxplot(airquality$Ozone,
        main = "Medição dos níveis de ozônio",
        xlab = "Distribuição dos valores",
        ylab = "Partes por bilhão",
        col = "orange",
        border = "brown")

# Extra 1: mudando a apresentação do boxplot

dev.off()
boxplot(airquality$Ozone,
        main = "Medição dos níveis de ozônio",
        xlab = "Partes por bilhão",
        ylab = "Distribuição dos valores",
        col = "orange",
        border = "brown", horizontal = TRUE, notch = TRUE)

# Extra 2: criando e exibindo múltiplos boxplots

dev.off()
boxplot(Temp ~ Month,
        data = airquality,
        main = "Variação mensal das temperaturas",
        xlab = "Código do mês",
        ylab = "Temperatura (em F)",
        col = "blue",
        border = "black")
