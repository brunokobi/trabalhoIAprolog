%Aluno: Bruno Kobi Valadares de Amorim

%INICIO DA LISTA DE FATOS DO PROBLEMA 
antes(helena_hypolito , bruna_barros).
antes(helena_hypolito , quincas_quaresma).
antes(helena_hypolito,eduardo_eugencio).
antes(helena_hypolito,nauvia_novais).
antes(fabio_freitas,helena_hypolito).
antes(tadeu_torres,renato_ramos).
antes(tadeu_torres,carla_correia).
antes(davi_dantas,tadeu_torres).
antes(kaio_kiefer,tadeu_torres).
antes(gina_gomes,miguel_moraes).
antes(gina_gomes,paula_prado).
antes(gina_gomes,ursula_uliana).
antes(fabio_freitas,gina_gomes).
antes(nauvia_novais,gina_gomes).
antes(tadeu_torres,gina_gomes).
antes(fabio_freitas,ivan_ignacio).
antes(ivan_ignacio,joana_justo).
antes(ivan_ignacio,yves_young).
antes(ivan_ignacio,kaio_kiefer).
antes(ivan_ignacio,luana_lessa).
antes(zaira_zaia,andre_alves).
antes(renato_ramos,zaira_zaia).
antes(walter_watanabe,zaira_zaia).
antes(yves_young,bruna_barros).
antes(eduardo_eugenio,bruna_barros).
antes(paula_prado,bruna_barros).
antes(bruna_barros,andre_alves).
antes(bruna_barros,zaira_zaia).
antes(simone_souza,davi_dantas).
antes(davi_dantas,xena_xavier).
antes(davi_dantas,joana_justo).
antes(davi_dantas,renato_ramos).
antes(davi_dantas,helena_hypolito).
antes(valdo_vilares,ursula_uliana).
antes(valdo_vilares,otto_orelio).
antes(walter_watanabe,valdo_vilares).
antes(kaio_kiefer,valdo_vilares).
antes(quincas_quaresma,valdo_vilares).
antes(paula_prado,valdo_vilares).
antes(kaio_keifer,xena_xavier).
antes(xena_xavier,renato_ramos).
antes(xena_xavier,joana_justo).
antes(xena_xavier,carla_correa).
antes(quincas_quaresma,luana_lessa).
antes(nauvia_novai,luana_lessa).
antes(luana_lessa,walter_watanabe).
antes(luana_lessa,otto_orelio).
antes(ursula_uliana,otto_orelio).
antes(ursula_uliana,zaira_zaia).
antes(miguel_moraes,ursula_uliana).
antes(carla_correia,ursula_uliana).
antes(fabio_freitas,helena_hypolito).
antes(andre_alves,fabio_freitas).
%FIM DA LISTA DE FATOS DO PROBLEMA 



%INICIO DA LISTA DE REGRAS DO PROBLEMA 

%regra que verifica se o fato é verdade, mentira ou indeterminado
verificafato(A,B,R):-(antes(A,B),R is 0);
    			(antes(B,A),R is 1);	
    					(R is 0).


%regra verifica os fatos da corrida retorna a soma dos fatos
% se for maior que zero tem mentira nos fatos
racer([],[],0).
racer([],[_|L],T):- racer(L,L,T).    
racer([A|L],[D|M],R):- verificafato(D,A,G),
  append([D],M,Q),    
    racer(L,Q,H),
    R is (G+H),!.


% Regra converte Resposta de inteiro pra bollean
boolean(T) :- T==1,false.
boolean(T) :- T==0, true.

%regra solução do problema retorna true ou falso , para um rank inserido 
race([X|L]) :-  append([X],L,Q), racer(L,Q,T),
    boolean(T),!.








