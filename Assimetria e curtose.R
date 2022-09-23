# Assimetria e curtose em linguagem R

# Assimetria

dados_forma = c(88, 95, 92, 97, 75, 96, 97, 94, 86, 91, 95, 97, 88, 85, 76, 68) # Cria um vetor atômico
dados_forma

dev.off() # Fecha os gráficos abertos em outras instâncias do R
hist(dados_forma, col='green') # Plota um histograma de frequências 

# O histograma mostra uma distribuição com assimetria negativa (à esquerda) 
# e alongada (leptocúrtica). Logo, deve-se esperar um coeficiente de assimetria < 0
# e um coeficiente de curtose > 3

if(!require(moments)) install.packages("moments") # Instala (se necessário) 
                                                  # e carrega o pacote "moments"
library(moments)

skewness(dados_forma) # Calcula o coeficiente de assimetria

kurtosis(dados_forma) # Calcula o coeficiente de curtose

