% Sistema Especialista de criacao de personagem de RPG
% Autores: Emerson Hoffmann
%          Leonardo Caracho
%          Victor Pozzan
%          Vitor Nogueira

% ------------------------------------------------------------------
% Programa Principal
% ------------------------------------------------------------------
:- encoding(utf8).

main :- nl, write('Sistema Especialista em escolha de classe de D&D 5.0'), nl,
	retractall(fato(_, _)),		% limpa a memória de trabalho.
	classe(A),
	write('De acordo com suas respostas o aconselhamento do sistema especialista é escolher a classe '),
	write(A), nl.

% ------------------------------------------------------------------
% Regras sobre as aplicaçães
% ------------------------------------------------------------------

classe('Bárbaro

        *--------------------------------------------|BÁRBARO|--------------------------------------------*
        |Descrição: Um feroz guerreiro de origem primitiva que pode entrar em fúria durante uma batalha   |
        |Dado de Vida: d12                                                                                |
        |Habilidade Primária: Força                                                                       |  
        |Proeficiências em Resistência: Força & Constituição                                              |      
        |Proeficiências em Armas e Armaduras: Armaduras leves e médias, escudos, armas simples e marciais |
        |Símbolo:                                                                                         |
        |         :´            `:                                                                        |
        |        :mm           -Mh.                                                                       |
        |       -MMM+`   ds   .hMMN:                                                                      |
        |       ZNMMMNdoVMMVhmMMMMMN`                                                                     |
        |      dMMMMMMMMMMMMMMMMMMMMo                                                                     |
        |      MMMMMMMMMMMMMMMMMMMM<                                                                      |
        |      NMMMMMMMMMMMMMMMMMMMMy                                                                     |
        |      sMNMMMMNmMMMMmMMMMMMM:                                                                     |
        |       ZNMMh`  sMMs  -mMMMy                                                                      |
        |       `dMm     MN    -MMo                                                                       |
        |         /y     MN    `h-                                                                        |
        |                MM                                                                               |
        |               <MM>                                                                              |
        |               .MM.                                                                              |
        |               .MM.                                                                              |
        |               .MM.                                                                              |
        |               .MM.                                                                              |
        |               .MM.                                                                              |
        |               .MM.                                                                              |   
        |               .MM.                                                                              |
        |                ..                                                                               |                                                                                                 |
        *-------------------------------------------------------------------------------------------------*') :-
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


%Ps

p1(X) :-
    pergunte(p1, A, 'Como você reage ao perigo?\n\t 1 - Não, eu rio na da cara do perigo HAHAHA!\n\t 2 - Prefiro tomar distância segura\n'), A = X.
p2(X) :-
    pergunte(p2, A, 'Você é mais forte ou ágil?\n\t 1 - Forte\n\t 2 - Ágil\n'), A = X.
p3(X) :-
    pergunte(p3, A, 'O que você prefere?\n\t 1 - Habilidade\n\t 2 - Magia\n'), A = X.
p4(X) :-
    pergunte(p4, A, 'Seu bichinho de estimação seria...\n\t 1 - Bestas ferozes\n\t 2 - Sei lá, talvez um rato\n'), A = X.
p5(X) :-
    pergunte(p5, A, 'O quão bom você é em ficar quieto?\n\t 1 - SHHHHH "Silêncio"\n\t 2 - Eu não sei eu nunca tentei\n'), A = X.
p6(X) :-
    pergunte(p6, A, 'Eu sou treinado para matar usando...\n\t 1 - Minha astúcia e talvez veneno\n\t 2- Qualquer coisa que fure, corte ou esmague\n'), A = X.
p7(X) :-
    pergunte(p7, A, 'Você curte filmes de Kung-fu?\n\t 1 - Adoro Kung-fu Panda\n\t 2 - Não muito\n'), A = X.
p8(X) :-
    pergunte(p8, A, 'Você arriscaria sua vida por uma boa história?\n\t 1 - Melhor nãoo...\n\t 2 - Ohh YEAHH!\n'), A = X.
p9(X) :-
    pergunte(p9, A, 'Vocẽ é fatal por quê?\n\t 1 - Porque sou experiente na arte do combate\n\t 2 - Porque sou estratégico\n\t 3 - Porque sou um exímio caçador\n'), A = X.
p10(X) :-
    pergunte(p10, A, 'Seus planos geralmente envolvem...\n\t 1 - Furtividade com punhal e um manto nas sombras\n\t 2 - Pactos com elementos estranhos e as trevas\n'), A = X.
p11(X) :-
    pergunte(p11, A, 'De onde seu poder vem?\n\t 1 - Vem da minha conexão com a natureza\n\t 2 - Das divindades que cultuo\n\t 3 - Meu poder vem da música\n\t 4 - Meu poder vem dentro de mim\n\t 5 - Vem de um pacto com seres de outro mundo\n'), A = X.
p12(X) :-
    pergunte(p12, A, 'Você é um erudito?\n\t 1 - Sou um devorador de livros\n\t 2 - Não necessariamente\n'), A = X.
p13(X) :-
    pergunte(p13, A, 'Você é religioso?\n\t 1 - Não necessariamente\n\t 2 - Sou um servo de Deus\n'), A = X.
p14(X) :-
    pergunte(p14, A, 'Você fica furioso fácilmente?\n\t 1 - Sim ARRRRRRRRGH!\n\t 2 - Nem tanto\n'), A = X.
p15(X) :-
    pergunte(p15, A, 'Você gostaria de se transformar em um urso?\n\t 1 - Seria muito manero\n\t 2 - Nãoooo\n'), A = X.
p16(X) :-
    pergunte(p16, A, 'Eu vivo minha fé...\n\t 1 - Guiado pelo poder de Deus\n\t 2 - Executando à justiça definitiva\n'), A = X.
p17(X) :-
    pergunte(p17, A, 'Você prefere...\n\t 1 - Um ou dois super-feitiços\n\t 2 - versatibilidade mágica\n\t 3 - Muitas magias por dias\n'), A = X.


% Regras de interação com o Usuário - Baixo nível
% ------------------------------------------------------------------

pergunte(Atributo, Valor, Texto) :-
	fato(Atributo, Valor), !.
pergunte(Atributo, Valor, Texto) :-
	fato(Atributo, Valor), !, fail.	% O fato jaá foi pdo uma vez e não o será mais.
pergunte(A, V, Texto) :-
	nl, write(Texto), write('> '),
	read(V), nl,
	asserta(fato(A,V)).
