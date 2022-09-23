# Histograma de frequência no R

# Etapa 1: listar as variáveis da base de dados pública "airquality" e escolher uma delas

str(airquality)
temperatura_ar = airquality$Temp
temperatura_ar


# Etapa 2: plotar um histograma simples

dev.off()
hist(temperatura_ar, main = c("Temperaturas registradas (em F)"))


# Etapa 3: inserir nomes dos eixos e cor no histograma

dev.off()
hist(temperatura_ar, main = c("Temperaturas registradas (em F)"), 
     xlab = "Temperatura (em F)", ylab ="Frequência absoluta", 
        col = "darkmagenta", border = "black", breaks = 10)


# Etapa 4: inserir a curva normal

dev.off()
hist(temperatura_ar, main = c("Temperaturas registradas (em F)"), 
     xlab = "Temperatura (em F)", ylab ="Frequência absoluta", 
     col = "darkmagenta", border = "black", breaks = 10)
        xfit = seq(min(temperatura_ar), max(temperatura_ar), length = 50)
        yfit = dnorm(xfit, mean = mean(temperatura_ar), sd = sd(temperatura_ar))
        yfit = yfit * diff(airquality$Temp[1:2]) * length(temperatura_ar) 
        lines(xfit, yfit, col="blue", lwd = 2)
