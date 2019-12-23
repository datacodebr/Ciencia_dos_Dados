####################################################################################
#                         
#                           Primeiros Passos na Linguagem R
#
#
####################################################################################

#Avisos Paroquiais

### Caso tenha problemas com a acentuação, consulte este link:
### https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

### Configurando o diretório de trabalho
### Coloque entre aspas o diretório de trabalho que você está usando no seu computador
### Não use diretórios com espaço no nome

setwd("C:/R/RAnalytics")
getwd()


### Nome dos Contributors
contributors()


##### Licença
license()


### Informações sobre a sessão
sessionInfo()


### Imprimir na tela
print('Cientista de Dados - O profissional mais sexy do séc. XXI')


### Criar gráficos
plot(1:25)


### Instalar pacotes
install.packages('randomForest')
install.packages('ggplot2')
install.packages("dplyr")
install.packages("devtools")


### Carregar o pacote
library(ggplot2)


### Descarregar o pacote
detach(package:ggplot2)


### Se souber o nome da função
help(mean)
?mean


### Para buscar mais opções sobre uma função, use o pacote SOS
install.packages("sos")
library(sos)
findFn("fread")


### Se não souber o nome da função
help.search('randomForest')
help.search('matplot')
??matplot
RSiteSearch('matplot')
example('matplot')


### Sair
q()


##########################################################################
### Operadores
##########################################################################

### Operadores Básicos, Relacionais e Lógicos em R

### Obs: Caso tenha problemas com a acentuação, consulte este link:
### https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

### Configurando o diretório de trabalho
### Coloque entre aspas o diretório de trabalho que você está usando no seu computador
### Não use diretórios com espaço no nome
setwd("C:/Users/user/Videos/Ciência dos Dados/Cursos/R Analytics/Scripts")
getwd()

### Operadores Básicos

### Soma
7 + 7

### Subtração
7 - 4

### Multiplicação
5 * 5

### Divisão
6 / 6

### Potência
3^2
3**2

### Módulo
16 %% 3 


### Operadores Relacionais

### Atribuindo variáveis
x = 7
x <- 7
y = 5

### Operadores
x > 8
x < 8

x <= 8

x >= 8
x == 8
x != 8 # sinal de diferença


### Operadores lógicos

### And
(x==8) & (x==6)
(x==7) & (x>=5)
(x==8) & (x==7)

### Or
(x==8) | (x>5)
(x==8) | (x>=5)

### Not
x > 8
print(!x > 8)


##########################################################################
### VARIAVEIS 
##########################################################################

### Variáveis em R

### Obs: Caso tenha problemas com a acentuação, consulte este link:
### https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

### Configurando o diretório de trabalho
### Coloque entre aspas o diretório de trabalho que você está usando no seu computador
### Não use diretórios com espaço no nome
setwd("C:/Users/user/Videos/Ciência dos Dados/Cursos/R Analytics/Scripts")
getwd()

### Criando Variáveis
var1 = 100
var1
mode(var1)

help("mode")

sqrt(var1)


### Podemos atribuir o valor de uma variável a outra variável
var2 = var1
var2
mode(var2)
typeof(var2)
help("typeof")


### Uma variável pode ser uma lista de elementos
var3 = c("primeiro", "segundo", "terceiro")
var3
mode(var3)


### Uma variável pode ser uma função
var4 = function(x) {x+3}
var4
mode(var4)


### Podemos também mudar o modo do dado. 
var5 = as.character(var1)
var5
mode(var5)


### Atribuindo valores a objetos
x <- c(1,2,3)
x
x1 = c(1,2,3)
x1
c(1,2,3) -> y
y

assign("x", c(6.3,4,-2))
x


### Verificando o valor em uma posição específica
x[1]


### Verificar objetos
ls()

objects()


### Remover objetos
rm(x)
x



##########################################################################
### TIPOS DE DADOS 
##########################################################################

### Tipos Básicos de Dados em R

### Obs: Caso tenha problemas com a acentuação, consulte este link:
### https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

### Configurando o diretório de trabalho
### Coloque entre aspas o diretório de trabalho que você está usando no seu computador
### Não use diretórios com espaço no nome
setwd("C:/Users/user/Videos/Ciência dos Dados/Cursos/R Analytics/Scripts")
getwd()

### Numeric - Todos os números criados em R são do modo numeric
### São armazenados como números decimais (double)
num1 <- 7
num1
class(num1)
mode(num1)
typeof(num1)

num2 = 16.82
num2
mode(num2)
typeof(num2)


### Integer 
### Convertemos tipos numeric para integer
is.integer(num2)
y = as.integer(num2)
y
class(y)
mode(y)
typeof(y)

as.integer('3.17')
as.integer("Joe")
as.integer('Joe')
as.integer(TRUE)
as.integer(FALSE)
as.integer('TRUE')


### Character
char1 = 'A'
char1
mode(char1)
typeof(char1)

char2 = "cientista"
char2
mode(char2)
typeof(char2)

char3 = c("Ciência", "dos", "Dados")
char3
mode(char3)
typeof(char3)


### Complex
compl = 2.5 + 4i
compl
mode(compl)
typeof(compl)

sqrt(-1) 
sqrt(-1+0i)
sqrt(as.complex(-1)) 


### Logic
x = 1; y = 2 
z = x > y
z
class(z)

u = TRUE; v = FALSE 
class(u)
u & v
u | v   
!u


### Operações com 0
5/0
0/5

### Erro
'Joe'/5

#########################################################################################
#########################################################################################
### Tipos Avançados de Dados em R

### Obs: Caso tenha problemas com a acentuação, consulte este link:
### https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

### Configurando o diretório de trabalho
### Coloque entre aspas o diretório de trabalho que você está usando no seu computador
### Não use diretórios com espaço no nome
setwd("C:/Users/user/Videos/Ciência dos Dados/Cursos/R Analytics/Scripts")
getwd()

### Vetor: possui 1 dimensão e 1 tipo de dado

vetor1 <- c(1:20)
vetor1
length(vetor1)
mode(vetor1)
class(vetor1)
typeof(vetor1)


### Matriz: possui 2 dimensões e 1 tipo de dado 

matriz1 <- matrix(1:20, nrow = 2)
matriz1
length(matriz1)
mode(matriz1)
class(matriz1)
typeof(matriz1)


### Array: possui 2 ou mais dimensões e 1 tipo de dado 

array1 <- array(1:5, dim = c(3,3,3))
array1
length(array1)
mode(array1)
class(array1)
typeof(array1)


### Data Frames: dados de diferentes tipos
### Maneira mais fácil de explicar data frames: é uma matriz com diferentes tipos de dados

View(iris)
length(iris)
mode(iris)
class(iris)
typeof(iris)


### Listas: coleção de diferentes objetos
### Diferentes tipos de dados são possíveis e comuns

lista1 <- list(a = matriz1, b = vetor1)
lista1
length(lista1)
mode(lista1)
class(lista1)
typeof(lista1)


### Funções também são vistas como objetos em R

func1 <- function(x) {
  var1 <- x * x
  return(var1)
}

func1(5)
class(func1)


### Removendo objetos
objects()
rm( func1)
objects()






##########################################################################
### VETORES  
##########################################################################

### Vetores, Operações com Vetores e Vetores Nomeados

### Obs: Caso tenha problemas com a acentuação, consulte este link:
### https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

### Configurando o diretório de trabalho
### Coloque entre aspas o diretório de trabalho que você está usando no seu computador
### Não use diretórios com espaço no nome
setwd("C:/Users/user/Videos/Ciência dos Dados/Cursos/R Analytics/Scripts")
getwd()

### Vetor de strings
vetor_caracter = c("Data", "Science", "é tudo")
vetor_caracter


### Vetor de floats
vetor_numerico = c(1.90, 45.3, 300.5) 
vetor_numerico


### Vetor de valores complexos
vetor_complexo = c(5.2+3i, 3.8+4i)
vetor_complexo


### Vetor de valores lógicos
vetor_logico = c(TRUE, FALSE, TRUE, FALSE, FALSE) 
vetor_logico


### Vetor de números inteiros
vetor_integer  = c(2, 4, 6)
vetor_integer


### Utilizando seq()
vetor1 = seq(1:100)
vetor1
is.vector(vetor1)


### Utilizando rep()
vetor2 = rep(1:5)
vetor2
is.vector(vetor2)


### Indexação de vetores
a <- c(1,2,3,4,5)
a
a[1]
a[6]

b <- c("Data", "Science", "é tudo!")
b
b[1]
b[2]
b[3]
b[4]


### Combinando vetores
v1 = c(2, 3, 5) 
v2 = c("aa", "bb", "cc", "dd", "ee") 
c(v1, v2) 


### Operações com Vetores
x = c(1, 3, 5, 7) 
y = c(2, 4, 6, 8)

x * 5
x + y
x - y
x * y
x / y


### Somando vetores com números diferentes de elementos
alfa = c(10, 20, 30) 
beta = c(1, 2, 3, 4, 5, 6, 7, 8, 9) 
alfa + beta 


### Vetor Nomeado
v = c("Nelson", "Rubens") 
v
names(v) = c("Nome", "Sobrenome") 
v
v["Nome"] 

v["Sobrenome"] 


##########################################################################
### MATRIZES
##########################################################################

### Matrizes, Operações com Matrizes e Matrizes Nomeados 

### Obs: Caso tenha problemas com a acentuação, consulte este link:
### https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

### Configurando o diretório de trabalho
### Coloque entre aspas o diretório de trabalho que você está usando no seu computador
### Não use diretórios com espaço no nome
setwd("C:/Users/user/Videos/Ciência dos Dados/Cursos/R Analytics/Scripts")
getwd()

### Criando Matrizes

### Número de Linhas
matrix (c(1,2,3,4,5,6), nr = 2)
matrix (c(1,2,3,4,5,6), nr = 3)
matrix (c(1,2,3,4,5,6), nr = 6)


### Número de Colunas
matrix (c( 1,2,3,4,5,6), nc = 2)


### Help
?matrix


### Matrizes precisam ter um número de elementos que seja múltiplo do número de linhas
matrix (c(1,2,3,4,5), nc = 2)


### Criando matrizes a partir de vetores e preenchendo a partir das linhas
meus_dados = c(1:10)
meus_dados

matrix(data = meus_dados, nrow = 5, ncol = 2, byrow = T)

matrix(data = meus_dados, nrow = 5, ncol = 2)


### Fatiando a Matriz
mat <- matrix(c(2,3,4,5), nr = 2)
mat
mat[1,2]
mat[2,2]
mat[1,3]
mat[,2]


### Criando uma matriz diagonal
matriz = 1:3
diag(matriz)


### Extraindo vetor de uma matriz diagonal
vetor = diag(matriz)
diag(vetor)


### Transposta da matriz
W <- matrix (c(2,4,8,12 ), nr = 2, ncol = 2)
W
t(W)
U <- t(W)
U


### Obtendo uma matriz inversa
W
solve(W)


### Multiplicação de Matrizes
mat1 <- matrix(c(2,3,4,5), nr = 2)
mat1
mat2 <- matrix(c(6,7,8,9), nr = 2)
mat2
mat1 * mat2
mat1 / mat2
mat1 + mat2
mat1 - mat2


### Multiplicando Matriz com Vetor
x = c(1:4)
x
y <- matrix(c(2,3,4,5), nr = 2)
y
x * y 


### Nomeando a Matriz
mat3 <- matrix(c('Terra', 'Marte', 'Saturno', 'Netuno'), nr = 2)
mat3
dimnames(mat3) = (list( c("Linha1", "Linha2"), c("Coluna1", "Coluna2")))
mat3


### Identificando linhas e colunas no momento de criação da Matriz
matrix (c(1,2,3,4), nr = 2, nc = 2, dimnames = list(c("Linha 1", "Linha 2" ), c( "Coluna 1", " Coluna 2") ))


### Combinando Matrizes
mat4 <- matrix(c(2,3,4,5), nr = 2)
mat4
mat5 <- matrix(c(6,7,8,9), nr = 2)
mat5
cbind(mat4, mat5)
rbind(mat4, mat5)


### Desconstruindo a Matriz
c(mat4)




##########################################################################
### LISTAS
##########################################################################

### Listas, Operações com Listas e Listas Nomeadas

### Obs: Caso tenha problemas com a acentuação, consulte este link:
### https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

### Configurando o diretório de trabalho
### Coloque entre aspas o diretório de trabalho que você está usando no seu computador
### Não use diretórios com espaço no nome
setwd("C:/Users/user/Videos/Ciência dos Dados/Cursos/R Analytics/Scripts")
getwd()

### Use list() para criar listas

### Lista de strings
lista_caracter1 = list('A', 'B', 'C')
lista_caracter1
lista_caracter2 = list(c("A", "A"), 'B', 'C')
lista_caracter2
lista_caracter3 = list(matrix(c("A", "A", "A", "A"), nr = 2), 'B', 'C')
lista_caracter3


### Lista de números inteiros
lista_inteiros = list(2, 3, 4)
lista_inteiros


### Lista de floats
lista_numerico = list(1.90, 45.3, 300.5)
lista_numerico


### Lista de números complexos
lista_complexos = list(5.2+3i, 2.4+8i)
lista_complexos


### Lista de valores lógicos
lista_logicos = list(TRUE, FALSE, FALSE)
lista_logicos


### Listas Compostas
lista_composta1 = list("A", 3, TRUE)
lista_composta1

lista1 <- list(1:10, c("Zico", "Ronaldo", "Garrincha"), rnorm(10))
lista1

?rnorm

### Slicing (Fatiamento) da Lista
lista1[1]
lista1[2]
lista1[[2]][1]  
lista1[[2]][1] = "Monica" 
lista1

### Para nomear os elementos - Listas Nomeadas
names(lista1) <- c("inteiros", "caracteres", "numéricos")
lista1

vec_num <- 1:4
vec_char <- c("A", "B", "C", "D")

lista2 <- list(Numeros = vec_num, Letras = vec_char)
lista2


### Nomear os elementos diretamente
lista2 <- list(elemento1 = 3:5, elemento2 = c(7.2,3.5))
lista2


### Trabalhando com elementos específicos da lista
names(lista1) <- c("inteiros", "caracteres", "numéricos")
lista1

lista1$caracteres
length(lista1$inteiros)
lista1$inteiros
lista1$numéricos


### Verificar o comprimento da lista
length(lista1)


### Podemos extrair um elemento específico dentro de cada nível da lista
lista1$caracteres[2]


### Mode dos elementos
mode(lista1$numéricos)
mode(lista1$caracteres)


### Combinando 2 listas
lista3 <- c(lista1, lista2)
lista3


### Transformando um vetor em lista
v = c(1:3)
v
l  = as.list(v)
l


### Unindo 2 elementos em uma lista
mat = matrix(1:4, nrow = 2)
mat
vec = c(1:9)
vec
lst = list(mat, vec)
lst





##########################################################################
### STRINGS 
##########################################################################

### Operações com Strings

### Obs: Caso tenha problemas com a acentuação, consulte este link:
### https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

### Configurando o diretório de trabalho
### Coloque entre aspas o diretório de trabalho que você está usando no seu computador
### Não use diretórios com espaço no nome
setwd("C:/Users/user/Videos/Ciência dos Dados/Cursos/R Analytics/Scripts")
getwd()

### String
texto <- "Isso é uma string!"
texto

x = as.character(3.14) 
x
class(x) 


### Concatenando Strings
nome = "Nelson"; sobrenome = "Rubens" 
paste(nome, sobrenome)
cat(nome, sobrenome)


### Extraindo parte da string
texto <- "Isso é uma string!"
texto
substr(texto, start=12, stop=17) 
?substr

### Contando o número de caracteres
nchar(texto)


### Alterando a capitalização
tolower("Histogramas e Elementos de Dados")
toupper("Histogramas e Elementos de Dados")


### Usando stringr
library(stringr)


### Dividindo uma string em caracteres
?strsplit
strsplit("Histogramas e Elementos de Dados", NULL)


### Dividindo uma string em caracteres, após o caracter espaço
strsplit("Histogramas e Elementos de Dados", " ")


### Trabalhando com strings
string1 <- c("Esta é a primeira parte da minha string e será a primeira parte do meu vetor", 
             "Aqui a minha string continua, mas será transformada no segundo vetor")

string1

string2 <- c("testando outras strings - ",
             "Análise de Dados em R")

string2

### Adicionando 2 strings
str_c(c(string1, string2), sep = "")



### Detectando padrões nas strings
string1 <- "17 jan 2001"
string2 <- "1 jan 2001"
padrao <- "jan 20"
grepl(pattern = padrao, x = string1)
padrao <- "jan20"
grepl(pattern = padrao, x = string2)




##########################################################################
###  DATAFRAME - TABELAS - Dataset
##########################################################################

### DataFrames e Operações com DataFrame 

### Obs: Caso tenha problemas com a acentuação, consulte este link:
### https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

### Configurando o diretório de trabalho
### Coloque entre aspas o diretório de trabalho que você está usando no seu computador
### Não use diretórios com espaço no nome
setwd("C:/Users/user/Videos/Ciência dos Dados/Cursos/R Analytics/Scripts")
getwd()

### Criando um dataframe vazio
df <- data.frame()
class(df)
df


### Criando vetores vazios
nomes <- character()
idades <- numeric()
itens <- numeric()
codigos <- integer()

df <- data.frame(c(nomes, idades, itens, codigos))
df


### Criando vetores
pais = c("Portugal", "Inglaterra", "Irlanda", "Egito", "Brasil")
nome = c("Bruno", "Tiago", "Amanda", "Bianca", "Marta")
altura = c(1.88, 1.76, 1.53, 1.69, 1.68)
codigo = c(5001, 2183, 4702, 7965, 8890)


### Criando um dataframe de diversos vetores
pesquisa = data.frame(pais, nome, altura, codigo)
pesquisa


### Adicionando um novo vetor a um dataframe existente
olhos = c("verde", "azul", "azul", "castanho", "castanho")
pesq = cbind(pesquisa, olhos)
pesq


### Informações sobre o dataframe
str(pesq)
dim(pesq)
length(pesq)


### Obtendo um vetor de um dataframe
pesq$pais
pesq$nome


### Extraindo um único valor
pesq[1,1]
pesq[3,2]


### Número de Linhas e Colunas
nrow(pesq)
ncol(pesq)

### Primeiros elementos do dataframe
head(pesq)
head(mtcars)


### Últimos elementos do dataframe
tail(pesq)
tail(mtcars)


### Data frames built-in do R
?mtcars
mtcars
View(mtcars)

### Filtro para um subset de dados que atendem a um critério
pesq[altura < 1.60,]
pesq[altura < 1.60, c('codigo', 'olhos')]
pesq


### Dataframes Nomeados
names(pesq) <- c("País", "Nome", "Altura", "Código", "Olhos")
pesq

colnames(pesq) <- c("Var 1", "Var 2", "Var 3", "Var 4", "Var 5")
rownames(pesq) <- c("Obs 1", "Obs 2", "Obs 3", "Obs 4", "Obs 5")
pesq


### Carregando um arquivo csv
?read.csv
pacientes <- data.frame(read.csv(file = 'pacientes.csv', header = TRUE, sep = ","))


### Visualizando o dataset
View(pacientes)
head(pacientes)
summary(pacientes)


### Visualizando as variáveis
pacientes$Diabete
pacientes$status
pacientes$Status


### Histograma
hist(pacientes$Idade)


### Combinando dataframes
dataset_final <- merge(pesq, pacientes)
dataset_final





##########################################################################
### # Pacotes e Instalação de Pacotes
##########################################################################


# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome

getwd()

# De onde vem as funções? Pacotes (conjuntos de funções)
# Quando você inicia o RStudio, alguns pacotes são 
# carregados por padrão

# Busca os pacotes carregados
search()

# Instala e carrega os pacotes
install.packages(c("ggvis", "tm", "dplyr"))
library(ggvis)
library(tm)
require(dplyr)

search()
?require
detach(package:dplyr)

# Lista o conteúdo dos pacotes
?ls
ls(pos = "package:tm")
ls(getNamespace("tm"), all.names = TRUE)

# Lista as funções de um pacote
lsf.str("package:tm")
lsf.str("package:ggplot2")
library(ggplot2)
lsf.str("package:ggplot2")


# R possui um conjunto de datasets preinstalados. 

library(MASS)
data()

?lynx
head(lynx)
head(iris)
tail(lynx)
summary(lynx)

plot(lynx)
hist(lynx)
head(iris)
iris$Sepal.Length
sum(Sepal.Length)

?attach
attach(iris)
sum(Sepal.Length)


# Instala os pacotes requeridos - Macro

# Lista de pacotes usados no projeto
packages <- c("dplyr", "randomForest", "ROCR")

for (p in packages) {
  if(!p %in% rownames(installed.packages())) {
    install.packages(p, dependencies = c("Depends", "Suggests"))
  }
}


##########################################################################
### Funções Buit In
##########################################################################


# Funções Built-in
abs(-43)
sum(c(1:5))
mean(c(1:5))
round(c(1.1:5.8))
rev(c(1:5))
seq(1:5)
sort(rev(c(1:5)))
append(c(1:5), 6)