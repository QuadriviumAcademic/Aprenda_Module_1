# Lista de exercícios 3

# Questão 1

# Crie uma tabela de frequências, em ordem decrescente, com os seguintes dados brutos:
# EUA, Canadá, Canadá, EUA, Brasil, Brasil, Brasil, Brasil, México, México, Costa Rica,
# México, EUA, Canadá, Brasil, Brasil, EUA, EUA, Costa Rica. Exporte esta tabela para 
# o Excel.


# Questão 2
# Um grupo de pessoas foram entrevistadas sobre suas percepções a respeito da qualidade do serviço de
# atendimento ao cliente de uma empresa. Os dados foram tabulados e dispostos na seguinte tabela:

# Percepção da Qualidade        Frequência absoluta (Fi)
# Péssima                               161
# Ruim                                  113
# Regular                                34
# Boa                                    19
# Excelente                               8

# Usando estas informações, calcule o número de classes (k) e o intervalo de classes (h)


# Questão 3
# O valor da hora de trabalho de um grupo de profissionais é o seguinte:

# 33,5 20,5 9,5 15,6 17,4 22,6 21,3 15,6 13,7 9,2 17,1 17,8 49,7 59,6 67,1
# 59,2 8,99 7,6 79,1 17,3 93,2 14,7 13,5 88,9 53,6 48,2 59,6 55,1 113,5 49,7

# Insira estes dados em uma tabela na qual eles estejam agrupados em classes 


# Questão 4
# Um biólogo coletou e tabulou os dados sobre a ocorrência das espécies de tamanduá em uma
# área de proteção ambiental. Esses dados são exibidos pela tabela abaixo.

# Espécie                                       Frequência absoluta (Fi)
# Tamanduá-bandeira (M. tridactyla)                       5
# Tamanduá-mirim (T. tetradactyla)                       19
# Tamanduá-do-norte (T. mexicana)                         2
# Tamanduaí (C. didactylus)                               5

# Exiba estes dados nos seguintes tipos de gráficos: barras verticais, pizza 2D e pizza 3D.
# Depois, verifique se alguma dessas frequências pode ser considerada um outlier severo ou moderado.


# Questão 5
# Plote um histograma de frequências (com curva normal) para a variável velocidade do vento (Wind), da base de
# dados online "airquality"


# Questão 6: calcule a média, a mediana, os quartis, decis e percentis da distribuição
# de dados da variável "Wind". Verifique se há outliers univariados severos ou moderados nela.
# Depois, analise a dispersão dos dados e o formato dessa distribuição.


# Questão 7
# Acesse o pacote BETS e plote o gráfico de linhas da evolução do Produto Interno Bruto (PIB) brasileiro
# acumulado e em dólares dos Estados Unidos (USD). O código desta série no BETS é 4192 e ela deverá abranger
# os anos de 1990 a 2020.


# Questão 8
# A base de dados online "mtcars" contém dados sobre veículos vendidos nos Estados Unidos. 
# Acesse esta base (use o comando attach(mtcars) e plote um gráfico de dispersão com as 
# seguintes características:

# a) linha de tendência na cor verde;
# b) peso do veículo (wt), na abcissa e consumo, em milhas por galão (mpg), na ordenada.
# c) título e rótulos nos eixos.


# Questão 9
# Crie um vetor atômico com 350 números aleatórios inteiros, de 3 a 1500. Depois, faça o
# diagrama ramo-e-folhas com comprimento igual a 1 (scale = 1). Sua resposta deve ser reproduzível.


# Questão 10
# Observe a tabela a seguir, criada a partir de dados coletados sobre pragas na plantação de uma
# fazenda produtora de hortaliças.

# Tipo de praga         Frequência absoluta (Fi)
# Formigas                      945
# Cochonilhas                   791
# Lagartas                      685
# Moscas Brancas                632
# Pulgões                       593
# Lesmas e Caracóis             531
# Ácaros                        517
# Outras Pragas                 506

# Analise estes dados com o gráfico apropriado e responda: o fazendeiro estaria agindo corretamente
# ao se concentrar no combate às formigas e cochonilhas?

#######################################################################################

# RESOLUÇÃO

# Questão 1
# Crie uma tabela de frequências, em ordem decrescente, com os seguintes dados brutos:
# EUA, Canadá, Canadá, EUA, Brasil, Brasil, Brasil, Brasil, México, México, Costa Rica,
# México, EUA, Canadá, Brasil, Brasil, EUA, EUA, Costa Rica. Exporte esta tabela para 
# o Excel.

paises = c("EUA", "Canadá", "Canadá", "EUA", "Brasil", "Brasil", "Brasil",
           "Brasil", "México", "México", "Costa Rica", "México", "EUA",
           "Canadá", "Brasil", "Brasil", "EUA", "EUA", "Costa Rica")
paises

if(!require(epiDisplay)) install.packages("epiDisplay") # Instala (se necessário) 
                                                        # e carrega o pacote "epiDisplay"
library(epiDisplay)

tabela_paises = tab1(paises, sort.group = "decreasing", 
               cum.percent = TRUE, graph = FALSE) # Cria a tabela em ordem decrescente
tabela_paises


if(!require(openxlsx)) install.packages("openxlsx") # Instala (se necessário) 
                                                    # e carrega o pacote "openxlsx"
library(openxlsx)

write.xlsx(tabela_paises, 'tabela_com_paises.xlsx') # Exporta a tabela para o Excel


# Questão 2
# Um grupo de pessoas foram entrevistadas sobre suas percepções a respeito da qualidade do serviço de
# atendimento ao cliente de uma empresa. Os dados foram tabulados e dispostos na seguinte tabela:

# Percepção da Qualidade        Frequência absoluta (Fi)
# Péssima                               161
# Ruim                                  113
# Regular                                34
# Boa                                    19
# Excelente                               8

# Usando estas informações, calcule o número de classes (k) e o intervalo de classes (h)

# A) Cálculo do número de classes (k) pela regra de Sturges

# k == 1 + 3,322(log10(n)) -> Em que n é o tamanho da amostra

# No exemplo, há 335 respondentes. Logo: n == 335

# Usando a regra de Sturges:

k = 1 + (3.322 * log10(335))
k
# Serão usadas 10 classes

# B) Cálculo do intervalo de classes (h) pela fórmula:

# h == A/k; em que A == amplitude de classe

frequencia = c(161, 113, 34, 19, 8) # Cria um vetor atômico com as frequências absolutas
frequencia

amplitude = max(frequencia) - min(frequencia) # Calcula a amplitude das frequências absolutas
amplitude

h = amplitude/10 # Divide a amplitude pelo número de classes
h
# O valor de h (intervalo de classes) deve ser arredondado para o maior número inteiro:

#h = 16

# Questão 3
# O valor da hora de trabalho de um grupo de profissionais é o seguinte:

# 33,5 20,5 9,5 15,6 17,4 22,6 21,3 15,6 13,7 9,2 17,1 17,8 49,7 59,6 67,1
# 59,2 8,99 7,6 79,1 17,3 93,2 14,7 13,5 88,9 53,6 48,2 59,6 55,1 113,5 49,7

# Insira estes dados em uma tabela na qual eles estejam agrupados em classes

# Etapa 1: tabular os dados brutos, armazenando-os em um vetor atômico

salario = c(33.5, 20.5, 9.5, 15.6, 17.4, 22.6, 21.3, 15.6, 13.7, 9.2, 17.1, 17.8,
            49.7, 59.6, 67.1, 59.2, 8.99, 7.6, 79.1, 17.3, 93.2, 14.7, 13.5, 88.9,
            53.6, 48.2, 59.6, 55.1, 113.5, 49.7)
salario
str(salario) # Conta o número de profissionais (n)

# Etapa 2: calcular o número de classes (k_salario) pela regra de Sturges

# k_salario == 1 + 3,322(log10(n)) -> Em que n é o tamanho da amostra

# No exemplo, há 30 profissionais Logo: n == 30

# Usando a regra de Sturges:

k_salario = 1 + (3.322 * log10(30))
k_salario

# Serão usadas 6 classes

# Etapa 3: calcular o intervalo de classes (h_salario) pela fórmula:

# h_salario == A/k_salario; em que A == amplitude de classe

amplitude_salario = max(salario) - min(salario)
amplitude_salario

h_salario = amplitude_salario/6
h_salario

# O valor do intervalo deve ser arredondado para o maior número inteiro:

#h_salario = 18

# C) Criando a tabela, considerando 6 classes e intervalo de classe de 18:

# Etapa 4: criar um objeto para armazenar os intervalos de classes

i_salario = seq(from = min(salario), to = max(salario), by = 18)
i_salario

# Etapa 5: criar outro objeto com os intervalos

c_salario = cut(salario, breaks = i_salario, right = FALSE, 
              include.lowest = TRUE)
c_salario

# Etapa 6: criar a tabela com os intervalos de classe

table(c_salario)
cbind(table(c_salario))
titulo_salario = cbind(table(c_salario))
colnames(titulo_salario) = c("Frequência Absoluta (fi) do salário/hora")
titulo_salario


# Questão 4
# Um biólogo coletou e tabulou os dados sobre a ocorrência das espécies de tamanduá em uma
# área de proteção ambiental. Esses dados são exibidos pela tabela abaixo.

# Espécie                                       Frequência absoluta (Fi)
# Tamanduá-bandeira (M. tridactyla)                       5
# Tamanduá-mirim (T. tetradactyla)                       19
# Tamanduá-do-norte (T. mexicana)                         2
# Tamanduaí (C. didactylus)                               5

# Exiba estes dados nos seguintes tipos de gráficos: barras verticais, pizza 2D e pizza 3D.
# Depois, verifique se alguma dessas frequências pode ser considerada um outlier severo ou moderado.

# A) Gráfico de barras verticais

# Etapa 1: criar o data frame com a base de dados

especie = c("Tamanduá-bandeira (M.tridactyla)", "Tamanduá-mirim (T.tetradactyla)",
            "Tamanduá-do-norte (T. mexicana)", "Tamanduaí (C.didactylus)")
especie

freq_abs = c(5, 19, 2, 5)
freq_abs

dados_especie = data.frame(especie, freq_abs)
dados_especie

# Etapa 2: instalar (se necessário) e carregar o pacote "ggplot2"

if(!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)


# Etapa 3: criar o gráfico de barras verticais com o ggplot2

dev.off()
graf_barras = ggplot(data = dados_especie, aes(x = especie, 
                                               y =freq_abs)) +
        geom_bar(stat = "identity", fill = "red") + 
        geom_text(aes(label = freq_abs), vjust = -0.3, size = 3.5)+
        ggtitle('Gráfico 1 - Ocorrência de espécies de tamanduá na área') +
        xlab('Espécies') +
        ylab('Frequência absoluta') +
        theme_minimal()
graf_barras


# B) Gráfico de pizza 2D

# Etapa 1: plotar o gráfico

dev.off()
pie(freq_abs, especie)

# Etapa 2: adicionar título e cores ao gráfico

pie(freq_abs, especie,
    main = "Gráfico 2 - Ocorrência de espécies de tamanduá na área",
    col=rainbow(4))

# Etapa 3: transformar as frequências absolutas em percentuais

pizza_p = round(100 * freq_abs/sum(freq_abs), 1)
pizza_p

# Etapa 4: adicionar porcentagens ao gráfico

lbls = paste(especie, pizza_p) # Adiciona porcentagens aos nomes das espécies
lbls
lbls2 = paste(lbls,"%",sep="") # Adiciona o símbolo % aos nomes das espécies
lbls2

pie(freq_abs, lbls2,
    main = "Gráfico 2 - Ocorrência de espécies de tamanduá na área",
    col=rainbow(5))


# C) Gráfico de pizza 3D

# Etapa 1) Instalar (se necessário) e carregar o pacote "plotrix"

if(!require(plotrix)) install.packages("plotrix")
library(plotrix)

# Etapa 2) plotar o gráfico 

dev.off()
pie3D(freq_abs,labels = lbls2, explode = 0.1,labelcex = .7, 
      main = "Gráfico 3 - Ocorrência de espécies de tamanduá na área")


# D) Boxplot com identificação de outliers severos e moderados

dev.off()

boxplot(dados_especie$freq_abs, outcol = "red", main = "Identificação de Outliers Extremos e Moderados na ocorrência
        de espécies de tamanduás",
        xlab = "Círculos cheios = outliers extremos. Círculos vazados = outliers moderados",
        ylab = "Frequências absolutas (Fi)", border = "black")
boxplot(dados_especie$freq_abs, add = TRUE, range = 3, col = "green",
        pars = list(outpch = 20, outcol = "red", whisklty = 0, staplelty = 0))


# Questão 5
# Plote um histograma de frequências (com curva normal) para a variável velocidade do vento (Wind), da base de
# dados online "airquality"

# Etapa 1: listar as variáveis da base de dados pública "airquality" e armazenar os dados de
# velocidade do vento em um vetor atômico

str(airquality)
vento = airquality$Wind
vento
str(vento)

# Etapa 2: plotar o histograma com a curva normal

dev.off()

hist(vento, main = c("Velocidade do vento (em MPH"), 
     xlab = "Velocidade (em MPH)", ylab ="Frequência absoluta", 
     col = "yellow", border = "black", breaks = 10)
xfit = seq(min(vento), max(vento), length = 50)
yfit = dnorm(xfit, mean = mean(vento), sd = sd(vento))
yfit = yfit * diff(airquality$Wind[1:2]) * length(vento) 
lines(xfit, yfit, col="blue", lwd = 2)


# Questão 6: calcule a média, a mediana, os quartis, decis e percentis da distribuição
# de dados da variável "Wind". Verifique se há outliers univariados severos ou moderados nela.
# Depois, analise a dispersão dos dados e o formato dessa distribuição.

# A) Média, mediana, quartis, decis e percentis

summary(vento) # Exibe a média e os quartis da variável

quantile(vento, probs = seq(.1, .9, by = .1)) # Exibe os decis

quantile(vento, probs = seq(.01, .99, by = .01)) # Exibe os percentis


# B) Plotagem do boxplot com outliers serveros e moderados

dev.off() # Encerra os gráficos abertos em outras instâncias do R

boxplot(vento, outcol = "red", main = "Identificação de Outliers Extremos e Moderados",
        xlab = "Círculos cheios = outliers extremos. Círculos vazados = outliers moderados",
        ylab = "Valores aleatórios da distribuição t de Student", border = "black")
boxplot(vento, add = TRUE, range = 3, col = "lightblue",
        pars = list(outpch = 20, outcol = "red", whisklty = 0, staplelty = 0))


# C) Dispersão dos dados

amplitude_vento = max(vento) - min(vento) # Calcula a aplitude da variável "velocidade do vento"
amplitude_vento

if(!require(ie2misc)) install.packages("ie2misc") # instala (se necessário) e carrega o pacote "ie2misc"
library(ie2misc)

madstat(amplitude_vento) # Calcula o desvio-médio absoluto usando a função "madstat"

var(vento) # Calcula a variância

sd(vento) # Calcula o desvio-padrão

if(!require(plotrix)) install.packages("plotrix") # Instala (se necessário) e carrega o pacote "plotrix"
library(plotrix)

std.error(vento) # Calcula o erro-padrão

cvp_vento = (sd(vento) / mean(vento)) * 100
cvp_vento


# D) Formato da distribuição: coeficientes de assimetria e de curtose

# Lembrete:

# As = 0 -> distribuição simétrica
# As > 0 -> distribuição assimétrica positiva (assimetria à direita)
# As < 0 -> distribuição assimétrica negativa (assimetria à esquerda)

# Ks = 3 -> distribuição mesocúrtica
# Ks < 3 -> distribuição platicúrtica
# Ks > 3 -> distribuição leptocúrtica


if(!require(moments)) install.packages("moments") # Instala (se necessário) e carrega o pacote "moments"
library(moments)

skewness(vento) # Calcula o coeficiente de assimetria

kurtosis(vento) # Calcula o coeficiente de curtose

# Questão 7
# Acesse o pacote BETS e plote o gráfico de linhas da evolução do Produto Interno Bruto (PIB) brasileiro
# acumulado e em dólares dos Estados Unidos (USD). O código desta série no BETS é 4192 e ela deverá abranger
# os anos de 1990 a 2020.


if(!require(BETS)) install.packages("BETS") # Instala (se necessário) e carrega o pacote "BETS"
library(BETS)

pib = BETSget(4192) # Coleta os dados sobre o PIB acumulado
pib

# Gráfico de linhas

dev.off()

plot(pib, type = "l", col = "red",
     main = "Brasil - Produto Interno Bruto Acumulado - PIB (1990 - 2020)",
     xlab = "Anos",
     ylab = "PIB acumulado (em USD)")


# Questão 8
# A base de dados online "mtcars" contém dados sobre veículos vendidos nos Estados Unidos. 
# Acesse esta base (use o comando attach(mtcars) e plote um gráfico de dispersão com as 
# seguintes características:

# a) linha de tendência na cor verde;
# b) peso do veículo (wt), na abcissa e consumo, em milhas por galão (mpg), na ordenada.
# c) título e rótulos nos eixos.


str(mtcars)
attach(mtcars)

dev.off()

plot(mtcars$wt, mtcars$mpg, 
     main = "Relação entre peso do veículo e cilindradas - carros vendidos nos Estados Unidos", 
     xlab = "Peso do veículo (em libras)", ylab = "Consumo (em milhas por galão)", pch = 19) +
        abline(lm(mtcars$mpg ~ mtcars$wt),
               col = "green") # Acrescenta uma linha de tendência verde


# Questão 9
# Crie um vetor atômico com 350 números aleatórios inteiros, de 3 a 1500. Depois, faça o
# diagrama ramo-e-folhas com comprimento igual a 1 (scale = 1). Sua resposta deve ser reproduzível.

set.seed(123) # Torna a resposta reproduzível

ramo = floor(runif(350, min = 3, max = 1500)) # Gera 350 números inteiros aleatórios entre 3 e 1500
ramo

stem(ramo, scale = 1) # Plota o diagrama ramo-e-folhas


# Questão 10
# Observe a tabela a seguir, criada a partir de dados coletados sobre pragas na plantação de uma
# fazenda produtora de hortaliças.

# Tipo de praga         Frequência absoluta (Fi)
# Formigas                      945
# Cochonilhas                   791
# Lagartas                      685
# Moscas Brancas                632
# Pulgões                       593
# Lesmas e Caracóis             531
# Ácaros                        517
# Outras Pragas                 506

# Analise estes dados com o gráfico apropriado e responda: o fazendeiro estaria agindo corretamente
# ao se concentrar no combate às formigas e cochonilhas?

# A) Inserindo os dados do eixo x: ocorrência das pragas

freq_pragas = c(945, 791, 685, 632, 593, 531, 517, 506)
freq_pragas
str(freq_pragas)


# B) Inserindo os rótulos das ocorrências de pragas no eixo x

names(freq_pragas) = c("Formigas", "Cochonilhas", "Lagartas", "Moscas Brancas", "Pulgões",
                       "Lesmas e Caracóis", "Ácaros", "Outras Pragas")


# C) Instalando (se necessário) e carrgando o pacote "qcc"

if(!require(qcc)) install.packages("qcc")
library(qcc)


# D) Criando o gráfico de Pareto

dev.off() 

pareto.chart(freq_pragas, main = "Pragas na Plantação da Fazenda",
             ylab = "Frequência acumulada (Fi)",
             cumperc = seq(0, 100, by = 10)) 
