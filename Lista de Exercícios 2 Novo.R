#Lista de Exercícios 2

#1) Crie uma sequência de números de 5 a 250, armazenados no objeto vetor1

#2) Crie o objeto vetor2, contendo uma sequência de números de 10 a 1500, 
#   com intervalo de 6,5.

#3) Armazene os seguintes valores no objeto vetor3: 5,5; 7; 8,9; 10,1; 7; 3,4

#4) Localize o segundo elemento de cada um dos três vetores criados.

#5) Liste os valores de vetor1 menores que 102,3.

#6) Crie o objeto matriz1, contendo uma sequência de números de 1 a 350.

#7) Crie o objeto matriz2, contendo os seguintes dados:Pedro, Henrique, 
#   Lucas, Mateus, Laís, Tereza, Nair, Bruno, Luís, Fabrício, Lívia, Eder.

#8) Em matriz1, localize o elemento que está na linha 10, coluna 5.

#9) Crie um data frame contendo os seguintes dados, nesta sequência: 
#   nome dos estados, suas siglas, região em que estão localizados, suas capitais 
#   e sua população total use o  último Censo do IBGE e liste os estados ordem 
#   decrescente de população.


#10) Na base de dados da questão anterior, acrescente o nome do maior aeroporto do estado 
#    e seu respectivo código IATA.

##########################################################################################
#RESOLUÇÃO

#Questão 1) Crie uma sequência de números de 5 a 250, armazenados no objeto vetor1

vetor1 = seq(5, 250)
vetor1


#Questão 2) Crie o objeto vetor2, contendo uma sequência de números de 10 a 1500, 
#   com intervalo de 6,5.

vetor2 = seq(10, 1500, by = 6.5)
vetor2


#Questão 3) Armazene os seguintes valores no objeto vetor3: 5,5; 7; 8,9; 10,1; 7; 3,4.

vetor3 = c(5.5, 7, 8.9, 10,1, 7, 3.4)
vetor3


#Questão 4) Localize o segundo elemento de cada um dos três vetores criados.

vetor1[2]
vetor2[2]
vetor3[2]


#Questão 5) Liste os valores de vetor1 menores que 102,3.

vetor1[vetor1 < 102.3]


#Questão 6) Crie o objeto matriz1, contendo uma sequência de números de 1 a 350.

matriz1 = matrix(data = seq(1, 350), nrow = 35, ncol = 10)
matriz1


#Questão 7) Crie o objeto matriz2, contendo os seguintes dados:Pedro, Henrique, 
#   Lucas, Mateus, Laís, Tereza, Nair, Bruno, Luís, Fabrício, Lívia, Eder.

matriz2 = matrix(data = c("Pedro", "Henrique", "Lucas", "Mateus", "Laís",
                          "Tereza", "Nair", "Bruno", "Luís", "Fabrício",
                          "Lívia", "Eder"), nrow = 3, ncol = 4)
matriz2


#Questão 8) Em matriz1, localize o elemento que está na linha 10, coluna 5.

matriz1[10, 5]


#Questão 9
#Crie um data frame contendo os seguintes dados, nesta sequência: 
        #   nome dos estados, suas siglas, região em que estão localizados, suas capitais 
        #   e sua população total use o  último Censo do IBGE e liste os estados ordem 
        #   decrescente de população.


estado = c("São Paulo", "Minas Gerais", "Rio de Janeiro", "Bahia", "Paraná",
           "Rio Grande do Sul", "Pernambuco", "Ceará", "Pará", "Santa Catarina",
           "Maranhão", "Goiás", "Amazonas", "Espírito Santo", "Paraíba",
           "Rio Grande do Norte", "Mato Grosso", "Alagoas", "Piauí", "Distrito Federal",
           "Mato Grosso do Sul", "Sergipe", "Rondônia", "Tocantins", "Acre", "Amapá",
           "Roraima")
estado

estadofator = factor(estado)
is.factor(estadofator)

sigla = c("SP", "MG", "RJ", "BA", "PR", "RS", "PE", "CE", "PA", "SC", "MA", "GO", "AM",
          "ES", "PB", "RN", "MT", "AL", "PI", "DF", "MS", "SE", "RO", "TO", "AC", "AP", "RR")
sigla

siglafator = factor(sigla)
is.factor(siglafator)

regiao = c("Sudeste", "Sudeste", "Sudeste", "Nordeste", "Sul", "Sul", "Nordeste", "Nordeste",
           "Norte", "Sul", "Nordeste", "Centro-Oeste", "Norte", "Sudeste", "Nordeste", "Nordeste",
           "Centro-Oeste", "Nordeste", "Nordeste", "Centro-Oeste", "Centro-Oeste", "Nordeste",
           "Norte", "Norte", "Norte", "Norte", "Norte")
regiao

regiaofator = factor(regiao)
is.factor(regiaofator)

capital = c("São Paulo", "Belo Horizonte", "Rio de Janeiro", "Salvador", "Curitiba", "Porto Alegre",
            "Recife", "Fortaleza", "Belém", "Florianópolis", "São Luís", "Goiânia", "Manaus", "Vitória",
            "João Pessoa","Natal", "Cuiabá", "Maceió", "Teresina", "Brasília", "Campo Grande", "Aracaju",
            "Porto Velho", "Palmas", "Rio Branco", "Macapá", "Boa Vista")
capital

capitalfator = factor(capital)
is.factor(capitalfator)

populacao = c(45919049, 21168791, 17264943, 14873064, 11433957, 11377239, 9557071, 9132078, 8602865,
              7164788, 7075181, 7018354, 4144597, 4018650, 4018127, 3506853, 3484466, 3337357, 3273227,
              3015268, 2778986, 2298696, 1777225, 1572866, 881935, 845731, 605761)
populacao

populacaofator = factor(populacao)
is.factor(populacaofator)

base_estados = data.frame(estadofator, siglafator, regiaofator, capitalfator, populacaofator)
base_estados

#Questão 10
# Na base de dados da questão anterior, acrescente o nome do maior aeroporto do estado 
# e seu respectivo código IATA.

aeroporto = c("Aeroporto Internacional de São Paulo/Guarulhos - Governador André Franco Montoro",
              "Aeroporto Internacional de Minas Gerais/Confins - Tancredo Neves",
              "Aeroporto Internacional do Rio de Janeiro/Galeão - Antônio Carlos Jobim",
              "Aeroporto Internacional de Salvador - Deputado Luis Eduardo Magalhães",
              "Aeroporto Internacional de Curitiba/Afonso Pena",
              "Aeroporto Internacional de Porto Alegre/Salgado Filho",
              "Aeroporto Internacional do Recife/Guararapes - Gilberto Freyre",
              "Aeroporto Internacional de Fortaleza/Pinto Martins",
              "Aeroporto Internacional de Belém/Val de Cans",
              "Aeroporto Internacional de Florianópolis/Hercílio Luz",
              "Aeroporto Internacional de São Luís/Marechal Cunha Machado",
              "Aeroporto de Goiânia/Santa Genoveva", "Aeroporto Internacional de Manaus/Eduardo Gomes",
              "Aeroporto de Vitória/Eurico de Aguiar Salles",
              "Aeroporto Internacional de João Pessoa/Presidente Castro Pinto",
              "Aeroporto Internacional de Natal/Augusto Severo",
              "Aeroporto Internacional de Cuiabá/Marechal Rondon",
              "Aeroporto de Maceió/Zumbi dos Palmares",
              "Aeroporto de Teresina/Senador Petrônio Portella",
              "Aeroporto Internacional de Brasília/Presidente Juscelino Kubitschek",
              "Aeroporto Internacional de Campo Grande",
              "Aeroporto Internacional de Aracaju/Santa Maria",
              "Aeroporto Internacional de Porto Velho/Governador Jorge Teixeira de Oliveira",
              "Aeroporto de Palmas/Brigadeiro Lysias Rodrigues",
              "Aeroporto Internacional de Rio Branco/Plácido de Castro",
              "Aeroporto Internacional de Macapá",
              "Aeroporto Internacional de Boa Vista/Atlas Brasil Cantanhede")
aeroporto

aeroportofator = factor(aeroporto)
is.factor(aeroportofator)

iata = c("GRU", "CNF", "GIG", "SSA", "CWB", "POA", "REC", "FOR", "BEL","FLN", "SLZ",
         "GYN", "MAO","VIX","JPA", "NAT", "CGB", "MCZ", "THE", "BSB", "CGR","AJU",
         "PVH", "PMW", "RBR", "MCP", "BVB")
iata

iatafator = factor(iata)
is.factor(iatafator)

base_estados_2 = data.frame(estadofator, siglafator, regiaofator, capitalfator, populacaofator,
                            aeroportofator, iatafator)
base_estados_2

