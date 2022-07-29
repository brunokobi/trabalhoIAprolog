%Aluno: Bruno Kobi Valadares de Amorim

%regra que solve o problema do labirinto - questão 2.2 

solve(X,Y,P,A) :- (pway(X,Y,A); pway(Y,X,A)),
					P=([X,Y]).

solve(X,Y,P,A) :- pway(X,Z,F),
    				solve(Z,Y,L,C),   
    					 P=[X|L],
   							A is (F+C).