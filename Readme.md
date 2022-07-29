# Trabalho de Programação Lógica

Inteligência Artificial – Mestrado Profissional em Computação Aplicada
Instituto Federal do Espírito Santo (Ifes) – Campus Serra
2022/1 - Semestre 1

# Aluno: Bruno Kobi Valadares de Amorim

# Estrutura dos arquivos:

Readme.md
`codigo fonte`
source_files/corrida.pl # codigo fonte - questão 2.1
source_files/labirinto.pl # codigo fonte - questão 2.2
source_files/pway.pl # caminhos - questão 2.2
source_files/quebracabeca.pl # codigo fonte - questão 2.3

# Questão 2.1 - Corrida :

# ranking é lista de nomes de participantes de uma corrida

Predicados:
antes(X,Y). # X é antes de Y
verificafato(X,Y,R). # X é verificado por Y e R é o resultado, o R pode ser verdadeiro=0, indeterminado=0 e falso=1.

racer(ranking,ranking,R). # R é o resultado da soma, se for maior que zero tem mentira nos fatos .
bolean(X). # apenas para converter para boolean.

race(ranking). #verifica se o rank é verdadeiro ou falso

# Questão 2.2 - Labirinto :

Predicados:
pway(a, b, d). # a é um caminho de b para distancia d
solve(X,Y,P,A). # X é um caminho de Y para distancia P e A é o caminho mais curto

# Questão 2.3 - Quebra-Cabeça :

# board é uma matriz 8x8 representando o tabuleiro do jogo)

Predicados:

# Item A:

matrizigual(board). # regra verifica se tem linhas iguais no tabuleiro
igualnottransposta(board) # verifica de tem transposta igual com mesmo index
comparalinhacolunas(L,C) # verifica se linha tem uma transporta equivalente
maioresmatriz(board,L) # encontra o maior elemento de cada lista e criar uma lista com os maiores elementos
maxmatriz(board,M) # retorno o maior elemento N do tabuleiro
puzzle(board). # regra verifica se o tabuleiro é um puzzle

# Item B:

total(board). # regra soma todos os elementos do tabuleiro
somar(board,S) # regra calcula a soma do tabuleiro
soma(L,S). # L é a soma dos elementos de uma lista
