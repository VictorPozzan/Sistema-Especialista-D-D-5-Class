% Sistema Especialista de criacao de personagem de RPG
% Autores: Emerson Hoffmann
%          Leonardo Caracho
%          Victor Pozzan
%          Vitor Nogueira


% ------------------------------------------------------------------
% Programa Principal
% ------------------------------------------------------------------

main :- nl, write('Sistema Especialista em escolha de classe de D&D 5.0'), nl,
	retractall(fato(_, _)),		% limpa a mem�ria de trabalho.
	classe(A),
	write('O aconselhamento é: '),
	write(A), nl.

% ------------------------------------------------------------------
% Regras sobre as aplicaçães
% ------------------------------------------------------------------
classe('Barbaro') :-   
    p1(1),
    p2(1),
    p13(1),
    p14(1).
classe('Druida') :-   
    p1(1),
    p2(1),
    p13(1),
    p14(2),
    p15(1).
classe('Guerreiro') :-   
    p1(1),
    p2(1),
    p13(1),
    p14(2),
    p15(2).
classe('Clerigo') :-   
    p1(1),
    p2(1),
    p13(2),
    p16(1).
classe('Paladino') :-   
    p1(1),
    p2(1),
    p13(2),
    p16(2).
classe('Monge') :-   
    p1(1),
    p2(2),
    p7(1).
classe('Guerreiro') :-   
    p1(1),
    p2(2),
    p7(2),
    p8(1),
    p9(1).
classe('Ladino') :-   
    p1(1),
    p2(2),
    p7(2),
    p8(1),
    p9(2),
    p10(1).
classe('Bruxo') :-   
    p1(1),
    p2(2),
    p7(2),
    p8(1),
    p9(2),
    p10(2).
classe('Patrulheiro') :-   
    p1(1),
    p2(2),
    p7(2),
    p8(1),
    p9(3).
classe('Bardo') :-   
    p1(1),
    p2(2),
    p7(2),
    p8(2).
classe('Patrulheiro') :-
    p1(2),
    p3(1),
    p5(1),
    p4(1).
classe('Ladino') :-
    p1(2),
    p3(1),
    p5(1),
    p4(2),
    p6(1).
classe('Guerreiro') :-
    p1(2),
    p3(1),
    p5(1),
    p4(2),
    p6(2).
classe('Bardo') :- 
    p1(2),
    p3(1),
    p5(2).
classe('Feiticeiro') :- 
    p1(2),
    p3(2),
    p17(1).
classe('Mago') :- 
    p1(2),
    p3(2),
    p17(2),
    p12(1).
classe('Druida') :- 
    p1(2),
    p3(2),
    p17(2),
    p12(2),
    p11(1).
classe('clerigo') :- 
    p1(2),
    p3(2),
    p17(2),
    p12(2),
    p11(2).
classe('Bardo') :- 
    p1(2),
    p3(2),
    p17(2),
    p12(2),
    p11(3).
classe('Feiticeiro') :- 
    p1(2),
    p3(2),
    p17(2),
    p12(2),
    p11(4).
classe('Bruxo') :- 
    p1(2),
    p3(2),
    p17(2),
    p12(2),
    p11(5).
classe('Bruxo') :- 
    p1(2),
    p3(2),
    p17(3).


%Perguntas
p1(1) :- pergunta1(A), A = 1.
p1(2) :- pergunta1(A), A = 2.
p2(1) :- pergunta2(A), A = 1.
p2(2) :- pergunta2(A), A = 2.
p3(1) :- pergunta3(A), A = 1.
p3(2) :- pergunta3(A), A = 2.
p4(1) :- pergunta4(A), A = 1.
p4(2) :- pergunta4(A), A = 2.
p5(1) :- pergunta5(A), A = 1.
p5(2) :- pergunta5(A), A = 2.
p6(1) :- pergunta6(A), A = 1.
p6(2) :- pergunta6(A), A = 2.
p7(1) :- pergunta7(A), A = 1.
p7(2) :- pergunta7(A), A = 2.
p8(1) :- pergunta8(A), A = 1.
p8(2) :- pergunta8(A), A = 2.
p9(1) :- pergunta9(A), A = 1.
p9(2) :- pergunta9(A), A = 2.
p9(3) :- pergunta9(A), A = 3.
p10(1) :- pergunta10(A), A = 1.
p10(2) :- pergunta10(A), A = 2.
p11(1) :- pergunta11(A), A = 1.
p11(2) :- pergunta11(A), A = 2.
p11(3) :- pergunta11(A), A = 3.
p11(4) :- pergunta11(A), A = 4.
p11(5) :- pergunta11(A), A = 5.
p12(1) :- pergunta12(A), A = 1.
p12(2) :- pergunta12(A), A = 2.
p13(1) :- pergunta13(A), A = 1.
p13(2) :- pergunta13(A), A = 2.
p14(1) :- pergunta14(A), A = 1.
p14(2) :- pergunta14(A), A = 2.
p15(1) :- pergunta15(A), A = 1.
p15(2) :- pergunta15(A), A = 2.
p16(1) :- pergunta16(A), A = 1.
p16(2) :- pergunta16(A), A = 2.
p17(1) :- pergunta17(A), A = 1.
p17(2) :- pergunta17(A), A = 2.
p17(3) :- pergunta17(A), A = 3.

pergunta1(A) :-
    pergunte(p1, A, 'Como você reage ao perigo?\n\t 1 - Não, eu rio na da cara do perigo HAHAHA!\n\t 2 - Prefiro tomar distância segura\n').
pergunta2(A) :-
    pergunte(p2, A, 'Você é mais forte ou ágil?\n\t 1 - Forte\n\t 2 - Ágil\n').
pergunta3(A) :-
    pergunte(p3, A, 'O que você prefere?\n\t 1 - Habilidade\n\t 2 - Magia\n').
pergunta4(A) :-
    pergunte(p4, A, 'Seu bichinho de estimação seria...\n\t 1 -  Bestas ferozes\n\t 2 - Sei lá, talvez um rato\n').
pergunta5(A) :-
    pergunte(p5, A, 'O quão bom você é em ficar quieto?\n\t 1 - SHHHHH "Silêncio"\n\t 2 - Eu não sei eu nunca tentei\n').
pergunta6(A) :-
    pergunte(p6, A, 'Eu sou treinado para matar usando...\n\t 1 - Minha astúcia e talvez veneno\n\t 2- Qualquer coisa que fure, corte ou esmague\n').
pergunta7(A) :-
    pergunte(p7, A, 'Você curte filmes de Kung-fu?\n\t 1 - Adoro Kung-fu Panda\n\t 2- Não muito\n').
pergunta8(A) :-
    pergunte(p8, A, 'Você arriscaria sua vida por uma boa história?\n\t 1 - Melhor nãoo...\n\t 2 - Ohh YEAHH!\n').
pergunta9(A) :-
    pergunte(p9, A, 'Vocẽ é fatal por quê?\n\t 1 - Porque sou experiente na arte do combate\n\t 2 - Porque sou estratégico\n\t 3 - Porque sou um exímio caçador\n').
pergunta10(A) :-
    pergunte(p10, A, 'Seus planos geralmente envolvem...\n\t 1 - Furtividade com punhal e um manto nas sombras\n\t 2 - Pactos com elementos estranhos e as trevas\n').
pergunta11(A) :-
    pergunte(p11, A, 'De onde seu poder vem?\n\t 1 - Vem da minha conexão com a natureza\n\t 2 - Das divindades que cultuo\n\t 3 - Meu poder vem da música\n\t 4 - Meu poder vem dentro de mim\n\t 5 - Vem de um pacto com seres de outro mundo\n').
pergunta12(A) :-
    pergunte(p12, A, 'Você é um erudito?\n\t 1 - Sou um devorador de livros\n\t 2 - Não necessariamente\n').
pergunta13(A) :-
    pergunte(p13, A, 'Você é religioso?\n\t 1 - Não necessariamente\n\t 2 - Sou um servo de Deus\n').
pergunta14(A) :-
    pergunte(p14, A, 'Você fica furioso fácilmente?\n\t 1 - Sim ARRRRRRRRGH!\n\t 2 - Nem tanto\n').
pergunta15(A) :-
    pergunte(p15, A, 'Você gostaria de se transformar em um urso?\n\t 1- Seria muito manero\n\t 2 - Nãoooo\n').
pergunta16(A) :-
    pergunte(p16, A, 'Eu vivo minha fé...\n\t 1 - Guiado pelo poder de Deus\n\t 2 - Executando à justiça definitiva\n').
pergunta17(A) :-
    pergunte(p17, A, 'Você prefere...\n\t 1 - Um ou dois super-feitiços\n\t 2 - versatibilidade mágica\n\t 3 - Muitas magias por dias\n').


% Regras de intera��o com o Usu�rio - Baixo n�vel
% ------------------------------------------------------------------

pergunte(Atributo, Valor, Texto) :-
	fato(Atributo, Valor), !.
pergunte(Atributo, Valor, Texto) :-
	fato(Atributo, Valor), !, fail.	% O fato j� foi perguntado uma vez e n�o o ser� mais.
pergunte(A, V, Texto) :-
	nl, write(Texto), write('> '),
	read(V), nl,
	asserta(fato(A,V)).
