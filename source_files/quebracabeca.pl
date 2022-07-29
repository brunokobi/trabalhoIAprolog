%Aluno: Bruno Kobi Valadares de Amorim

% 1 . Não pode haver duas ou mais linhas iguais

% 2. Cada linha deve ser igual a uma coluna (transposta), mas não pode ser igual à coluna
% que tem o mesmo número da linhas. Por exemplo, a linha 2 não pode ser igual à
%coluna 2 (transposta).

% 3. Se o maior número que você escrever no tabuleiro for N então você também tem que
% escrever os números 1, 2, . . . , N − 1.

:- use_module(library(clpfd)).


% RESPOSTA ITEM A
% regra verifica se tem linhas iguais no tabuleiro - 1º regra do enunciado
matrizigual([A,B,C,D,E,F,G,H]):- not(A==B),not(A==C),not(A==D),not(A==E),not(A==F),not(A==G),not(A==H),
not(B==C),not(B==D),not(B==E),not(B==F),not(B==G),not(B==H),
not(C==D),not(C==E),not(C==F),not(C==G),not(C==H),
not(D==E),not(D==F),not(D==G),not(D==H),
not(E==F),not(E==G),not(E==H),
not(F==G),not(F==H),
not(G==H).   


% regra verifica se tem linhas iguais no tabuleiro - 1º regra do enunciado
matriznotigualr([]).
matriznotigualr([X,Y|L]):- not(X==Y),
    write(X),write(==),write(Y),nl,
     append([Y],L,S),
    matriznotigualr(S).
    
% regra verifica se a linha transporta no mesmo index naão seja e igual e verificar se a linha possui uma coluna igual  - 2º regra do enunciado
igualnottransposta([A,B,C,D,E,F,G,H]):-transpose([A,B,C,D,E,F,G,H],[Ac,Bc,Cc,Dc,Ec,Fc,Gc,Hc]),    
    not(A==Ac),not(B==Bc),not(C==Cc),not(D==Dc),not(E==Ec),not(F==Fc),not(G==Gc),not(H==Hc),    
    comparalinhacolunas([A,B,C,D,E,F,G,H],[Ac,Bc,Cc,Dc,Ec,Fc,Gc,Hc]),!.

comparalinhacolunas([],_).
comparalinhacolunas([X|L],C):- member(X,C),     
comparalinhacolunas(L,C),!.

% regra encontrar o maior N da matriz e verificar se seus descentes estão na matriz  - 3º regra do enunciado
maioresmatriz([],[0]).
maioresmatriz([X|L],S):-max_member(G,X),   
    maioresmatriz(L,B),    
     append([G],B,S).

maxmatriz(X,M):-maioresmatriz(X,S),
    max_member(G,S),
    M is G.


     

%regra que verifica todas as regras do jogo - 1  
puzzle(X):-matrizigual(X),write('1º regra Ok !'),nl,
    igualnottransposta(X),write('2º regra Ok !'),nl,
    maxmatriz(X,B), write('Maior N Tabuleiro = '),write(B),nl,
    total(X,S), write('Total Tabuleiro = '),write(S),!.


% RESPOSTA ITEM B 
% regra soma matriz do tabuleiro
total([],0).
total([X|L],S):-soma(X,G),
    total(L,B),
    S is B+G.

% Soma de todos os elementos da lista.
soma([],0).
soma([H|T],S):-soma(T,G),S is H+G.



/*SOLUÇÃO
 [
    [3,1,3,6,6,6,6,6],
    [3,3,1,6,6,6,6,6],
    [1,3,3,6,6,6,6,6],
    [6,6,6,4,5,2,5,4],
    [6,6,6,4,4,5,2,5],
    [6,6,6,5,4,4,5,2],
    [6,6,6,2,5,4,4,5],
    [6,6,6,5,2,5,4,4]
]
 */

