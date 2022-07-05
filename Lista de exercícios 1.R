#Lista de exercícios 1

#1) Multiplique os números ímpares existentes entre 0 e 10.

#2) Eleve a soma de 4 e 345 à terceira potência. Divida este resultado por 8,345.

#3) Calcule a razão entre 290 e 132, somando 34 ao resultado. Depois, 
#subtraia deste total a multiplicação entre 123 e 67, elevada à quinta potência.

#4) Eleve esta expressão à potência 0.5: (36 + 234) x (823 + 34).

#5) Calcule a raiz quadrada desta expressão: (123,45 - 3,971) / (32,546 x 0,00237).

#6) Calcule o logaritmo natural desta expressão: (3,7789/0.05) - 1,4722.

#7) Calcule o logaritmo na base 10 da expressão da questão anterior.

#8) Calcule a raiz quadrada do logaritmo na base 2 dos objetos das questões 6 e 7.

#9) Calcule a raiz quadrada desta expressão: (78,904/0,001). Eleve o resultado à décima potência.

#10) Calcule a razão entre o logaritmo natural de (3,456/0,05) 
#e o logaritmo na base 2 de 45,678.

##########################################################################################

#RESOLUÇÃO

#Questão 1: multiplique os números ímpares existentes entre 0 e 10.

questao1 = (1 * 3 * 5 * 7 * 9)
questao1


#Questão 2: eleve a soma de 4 e 345 à terceira potência. Divida este resultado por 8,345.

questao2 = ((4 + 345) ^ 3) / 8.345 # ou: ((4 + 345) ** 3) / 8.345
questao2


#Questão 3: calcule a razão entre 290 e 132, somando 34 ao resultado. Depois, subtraia 
#deste total a multiplicação entre 123 e 67, elevada à quinta potência.

questao3 = ((290 / 132) + 34) - ((123 * 67) ^ 5) # ou: ((290 / 132) + 34) - ((123 * 67) ** 5)
questao3


#Questão 4: Eleve esta expressão à potência 0.5: (36 + 234) x (823 + 34)

# Potência 0.5 == x ^ 0.5 == x ^ 1/2 = sqrt(x)

questao4 = sqrt((36 + 234) * (823 + 34))
questao4

#Questão 5: calcule a raiz quadrada desta expressão: (123,45 - 3,971) / (32,546 x 0,00237)

questao5 = sqrt((123.45 - 3.971) / (32.546 * 0.00237))
questao5


#Questão 6: calcule o logaritmo natural desta expressão: (3,7789/0.05) - 1,4722

questao6 = log((3.7789 / 0.05) - 1.4722)
questao6


#Questão 7: calcule o logaritmo na base 10 da expressão da questão anterior.

questao7 = log10((3.7789 / 0.05) - 1.4722) # ou: questao7 = log((3.7789 / 0.05) - 1.4722, 10)
questao7


#Questão 8: calcule a raiz quadrada do logaritmo na base 2 dos objetos das questões 6 e 7.

questao8a = log(questao6, 2) # ou: questao8a = log2(questao6)
questao8a

questao8b = log(questao7, 2) # ou: questao8a = log2(questao7)
questao8b

questao8a_raiz = sqrt(questao8a)
questao8a_raiz

questao8b_raiz = sqrt(questao8b)
questao8b_raiz


#Questão 9: calcule a raiz quadrada desta expressão: (78,904/0,001). 
#Eleve o resultado à décima potência.

questao9 = (sqrt(78.904 / 0.001)) ^ 10
questao9


#Questão 10: calcule a razão entre o logaritmo natural de (3,456/0,05) 
#e o logaritmo na base 2 de 45,678.

questao10 = log(3.456 / 0.05) / log2(45.678)
questao10