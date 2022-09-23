# Gráfico de pizza (pie chart) no R

#Cidade de origem	Frequência absoluta
#Itaboraí (RJ)	                5
#Marituba (PA)	               10
#Serra (ES)	                    9
#Alagoinhas (BA)	              7
#Itapipoca (CE)	               16


# Etapa 1: inserir dados para o gráfico

cidade_origem = c("Itaboraí (RJ)", "Marituba (PA)", "Serra (ES)", "Alagoinhas (BA)",
                  "Itapipoca (CE)")
cidade_origem

freq_abs = c(5, 10, 9, 7, 16)
freq_abs


# Etapa 2: plotar o gráfico

pie(freq_abs, cidade_origem)


# Etapa 3: adicionar título e cores ao gráfico

pie(freq_abs, cidade_origem,
    main = "Gráfico 2 - Cidade de origem dos entrevistados",
    col=rainbow(5))


# Etapa 4: transformar as frequências absolutas em percentuais

pizza_p = round(100 * freq_abs/sum(freq_abs), 1)
pizza_p


# Etapa 5: adicionar porcentagens ao gráfico

lbls = paste(cidade_origem, pizza_p) # Adiciona porcentagens aos nomes das cidades
lbls
lbls2 = paste(lbls,"%",sep="") # Adiciona o símbolo % aos nomes das cidades
lbls2

pie(freq_abs, lbls2,
    main = "Gráfico 2 - Cidade de origem dos entrevistados",
    col=rainbow(5))


# Extra: criar um gráfico em 3D com o pacote "plotrix"

# 1) Instalar (se necessário) e carregar o pacote "plotrix"

if(!require(plotrix)) install.packages("plotrix")
library(plotrix)


# 2) plotar o gráfico 

pie3D(freq_abs,labels = lbls2,explode = 0.1, 
      main = "Gráfico 1 - Cidade de origem dos entrevistados")


