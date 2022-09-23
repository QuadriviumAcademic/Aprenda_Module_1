# Criando tabelas com variáveis qualitativas no R Studio

#Estado de origem	Número de funcionários
#Rio de Janeiro	                 9
#Minas Gerais	                 7
#Espírito Santo	                11
#Amazonas	                 5
#Acre	                        12
#Rondônia	                23
#Roraima	                21
#Amapá	                         7


# Este exemplo mostra dados tabulados (tabular data) e com a frequência absoluta (fi)
# já calculada. Didaticamente, suponhamos que você tenha em mãos apenas os dados
# brutos (raw data). Isto nos permitirá criarmos nossa tabela do zero (from scratch).


# Etapa 1: tabular os dados brutos, armazenando-os em um fator

origem_func = c("Rio de Janeiro", "Rio de Janeiro", "Rio de Janeiro",
                "Rio de Janeiro", "Rio de Janeiro", "Rio de Janeiro",
                "Rio de Janeiro", "Rio de Janeiro", "Rio de Janeiro",
                "Minas Gerais", "Minas Gerais", "Minas Gerais", "Minas Gerais",
                "Minas Gerais", "Minas Gerais", "Minas Gerais", "Espírito Santo",
                "Espírito Santo", "Espírito Santo", "Espírito Santo", "Espírito Santo",
                "Espírito Santo", "Espírito Santo", "Espírito Santo", "Espírito Santo",
                "Espírito Santo", "Espírito Santo", "Amazonas", "Amazonas", "Amazonas",
                "Amazonas", "Amazonas", "Acre", "Acre", "Acre", "Acre", "Acre", "Acre",
                "Acre", "Acre", "Acre", "Acre", "Acre", "Acre", "Rondônia", "Rondônia",
                "Rondônia", "Rondônia", "Rondônia", "Rondônia", "Rondônia", "Rondônia",
                "Rondônia", "Rondônia", "Rondônia", "Rondônia", "Rondônia", "Rondônia",
                "Rondônia", "Rondônia", "Rondônia", "Rondônia", "Rondônia", "Rondônia",
                "Rondônia", "Rondônia", "Rondônia", "Roraima", "Roraima", "Roraima",
                "Roraima", "Roraima", "Roraima", "Roraima", "Roraima", "Roraima",
                "Roraima", "Roraima", "Roraima", "Roraima", "Roraima", "Roraima",
                "Roraima", "Roraima", "Roraima", "Roraima", "Roraima", "Roraima",
                "Amapá", "Amapá", "Amapá", "Amapá", "Amapá", "Amapá", "Amapá")
origem_func

origem_func_fator = factor(origem_func, levels = c("Rio de Janeiro",
                           "Minas Gerais", "Espírito Santo", "Amazonas",
                           "Acre", "Rondônia", "Roraima", "Amapá"))
origem_func_fator
is.factor(origem_func_fator)


# Etapa 2: instalar e carregar o pacote epiDisplay

install.packages('epiDisplay') # Instala o pacote. Isto precisa ser feito uma vez, apenas.
library(epiDisplay) # Carrega o pacote. Isto precisa ser feito em cada nova seção do R.


# Etapa 3: criar a tabela desejada

tabela = tab1(origem_func_fator, sort.group = "decreasing", 
              cum.percent = TRUE, graph = FALSE)
tabela


# Extra 1: exibir os valores em ordem crescente de frequência absoluta

tabela2 = tab1(origem_func_fator, sort.group = "increasing", 
                cum.percent = TRUE, graph = FALSE)
tabela2


# Extra 2: exportar a tabela para o Excel


# 1) Transformar a tabela em um data frame

tabela_dados = data.frame(tabela2)
tabela_dados
is.data.frame(tabela_dados)


# 2) Instalar e carregar o pacote para exportação no formato do Excel

install.packages("openxlsx")
library(openxlsx)


# 3) Exportar o data frame para o Excel

write.xlsx(tabela_dados, 'tabela_de_dados.xlsx')
