#Criando matrizes em linguagem R

#1.1) Matrizes com valores numéricos, apenas

# 1.1.1) Matriz com valores numéricos e sequenciais

matriz = matrix(seq(1, 100), nrow = 10, ncol = 10)
matriz
str(matriz)
is.numeric(matriz)


#1.1.1.1) Inserindo rótulos em linhas e colunas de uma matriz

matriz2 = matrix(seq(1, 100), nrow = 10, ncol = 10, 
                    dimnames = list(c("Linha 1", "Linha 2", "Linha 3", "Linha 4", 
                                      "Linha 5", "Linha 6", "Linha 7", "Linha 8", 
                                      "Linha 9", "Linha 10"),
                                    c("Coluna A", "Coluna B", "Coluna C", "Coluna D",
                                      "Coluna E", "Coluna F", "Coluna G", "Coluna H",
                                      "Coluna I", "Coluna J")))
matriz2
str(matriz2)
is.numeric(matriz2)
is.character(matriz2)


#1.1.2) Cálculos de álgebra matricial


#1.1.2.1) Determinante 

determinante = det(matriz2)
determinante

#1.1.2.2) Matriz Transposta 

transposta = t(matriz2)
transposta

#11) Matriz identidade

identidade = diag(x = 1, nrow = 10, ncol = 10)
identidade

#12) Inversa de uma matriz invertível


inversa = solve(matriz2)
inversa #O objeto matriz2 não é invertível

matrizinvertivel = matrix(seq(1,4), nrow = 2, ncol = 2)
matrizinvertivel

inversa2 = solve(matrizinvertivel)
inversa2


#1.2) Matrizes com dados qualitativos, apenas

cidadematriz = matrix(data = c("Londrina", "Apuí", "Sinop", "São José da Lapa", "Campo Maior"))
cidadematriz
str(cidadematriz)

estadomatriz = matrix(data = c("PR", "AM", "MT", "MG", "PI"))
estadomatriz
str(estadomatriz)

regiaomatriz = matrix(data = c("Sul", "Norte", "Centro-Oeste", "Sudeste", "Nordeste"))
regiaomatriz
str(regiaomatriz)

matrizquali = cbind(cidadematriz, estadomatriz, regiaomatriz)
matrizquali
str(matrizquali)


#2) Subscritos em matrizes 


#2.1) Subscritos em matrizes numéricas


matriz2
matriz2[4, 3]
matriz2[2, 5]
matriz2[6, 3]


#2.2) Subscritos em matrizes com dados qualitativos


matrizquali
matrizquali[1, 2]
matrizquali[5, 3]
matrizquali[4, 2]
