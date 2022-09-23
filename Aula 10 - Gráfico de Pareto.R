# Gráfico de Pareto no R

# Etapa 1: criar uma base de dados fictícia

# 1.1) Inserindo os dados do eixo x: reclamações dos leitores sobre a edição impressa de um livro

reclamacao = c(12, 42, 5, 61, 670, 45, 519, 34, 54, 34)
reclamacao


# 1.2) Rótulos dos valores dos defeitos no eixo x

names(reclamacao) = c("Faltando páginas", "Impressão borrada", "Diagramação ruim",
                   "Folha cortada", "Erros de digitação",
                   "Erros gramaticais", "Tradução ruim", "Folhas amassadas",
                   "Figuras faltando", "Papel fino")


# 1.3) Instalando (se necessário) e carrgando o pacote "qcc"

if(!require(qcc)) install.packages("qcc")
library(qcc)


# 1.4) Criando o gráfico de Pareto

dev.off() #Comando para fechar todos os gráficos eventualmente armazenados na memória

pareto.chart(reclamacao, main = "Principais reclamações dos leitores sobre a edição impressa do livro",
             ylab = "Frequência acumulada (Fi)",
             cumperc = seq(0, 100, by = 10)) 
             
             
             
             
           