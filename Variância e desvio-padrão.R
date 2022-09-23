# Variância e desvio-padrão em linguagem R

# 1) Variância

# 1.1) Variância populacional

set.seed(123) # Torna o exemplo reproduzível

populacao = runif(10000, min = 0, max = 1000000) # Cria um vetor atômico com os dados populacionais
populacao # Exibe parte dos valores armazenados no vetor atômico

var(populacao) # Calcula a variância populacional


# 1.2) Variância amostral

amostra = sample(populacao, size = 250) # Extrai uma amostra aleatória sem reposição do vetor atômico
amostra

var(amostra) # Calcula a variância amostral


# 2) Desvio-padrão

# 2.1) Desvio-padrão populacional

# Método 1: cálculo pela fórmula

dpp_1 = sqrt(var(populacao))
dpp_1

# Método 2: cálculo pela função

dpp_2 = sd(populacao)
dpp_2

# 2.2) Desvio-padrão amostral

# Método 1: cálculo pela fórmula

dpp_3 = sqrt(var(amostra))
dpp_3

# Método 2: cálculo pela função

dpp_4 = sd(amostra)
dpp_4


