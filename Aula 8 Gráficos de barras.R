# Criando gráficos de barra em linguagem R

# 1) Gráficos de barras para variáveis qualitativas

#Cidade de origem	Frequência absoluta
#Itaboraí (RJ)	                5
#Marituba (PA)	               10
#Serra (ES)	                9
#Alagoinhas (BA)	        7
#Itapipoca (CE)	               16


# Etapa 1: criar o data frame com a base de dados

cidade_origem = c("Itaboraí (RJ)", "Marituba (PA)", "Serra (ES)", "Alagoinhas (BA)",
                  "Itapipoca (CE)")
cidade_origem

freq_abs = c(5, 10, 9, 7, 16)
freq_abs

dados_cidade = data.frame(cidade_origem, freq_abs)
dados_cidade


# Etapa 2: instalar (se necessário) e carregar o pacote "ggplot2"

if(!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)


# Etapa 3: criar o gráfico de barras verticais com o ggplot2


graf_cidade = ggplot(data = dados_cidade, aes(x = cidade_origem, y =freq_abs)) +
        geom_bar(stat="identity")
graf_cidade


# Etapa 4: criar o gráfico de barras horizontais com o ggplot2

graf_cidade_h = graf_cidade + coord_flip()
graf_cidade_h


# Etapa 5: melhorar a estética do gráfico

# Melhorando o gráfico de barras verticais

# Inserindo valores e cores nas barras

graf_cidade2 = ggplot(data = dados_cidade, aes(x = cidade_origem, 
                                              y =freq_abs)) +
        geom_bar(stat="identity", fill = "darkgreen") +
        geom_text(aes(label = freq_abs), vjust = -0.3, size = 3.5)+
        theme_minimal()
graf_cidade2


# Adicionando título e nomes dos eixos

graf_cidade3 = ggplot(data = dados_cidade, aes(x = cidade_origem, 
                                               y =freq_abs)) +
        geom_bar(stat = "identity", fill = "darkblue") + 
        geom_text(aes(label = freq_abs), vjust = -0.3, size = 3.5)+
        ggtitle('Gráfico 1 - Cidade de origem dos entrevistados') +
        xlab('Cidade de origem') +
        ylab('Frequência absoluta') +
        theme_minimal()
graf_cidade3

