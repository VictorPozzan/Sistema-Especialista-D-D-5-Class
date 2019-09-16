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
	classe(A), descricao(B),
	write('De acordo com suas respostas o aconselhamento do sistema especialista é escolher a classe '),
	write(A), write(B), nl.

% ------------------------------------------------------------------
% Regras sobre as descrições 
% ------------------------------------------------------------------
descricao('
    
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
    |                ..                                                                               |
    *-------------------------------------------------------------------------------------------------*'):-
    classe('Bárbaro').

descricao('
    
    *---------------------------------------------|BARDO|---------------------------------------------*
    |Descrição: Um místico inspirador que possui poderes que ecoam a música da criação                |
    |Dado de Vida: d8                                                                                 |
    |Habilidade Primária: Carisma                                                                     |  
    |Proeficiências em Resistência: Destreza & Carisma                                                |      
    |Proeficiências em Armas e Armaduras: Armaduras leves, armas simples, bestas de mão, espadas      |
    |   longas, rapieiras e espadas curtas                                                            |
    |Símbolo:                                                                                         |
    |             ./-                                                                                 |
    |          ::mMMMN/:                                                                              |   
    |         `soMMMMMyo-                                                                             |   
    |          /sMMMMMho                                                                              |  
    |          +sMMMMMho                                                                              |    
    |           .dMMMN:                                                                               |    
    |            `MMM/                                                                                |   
    |            .MMM/                                                                                |   
    |            -MMM+                                                                                |   
    |            :MMMo                                                                                |   
    |            /MMMs                                                                                |   
    |            +MMMy                                                                                |   
    |            oMMMh                                                                                |   
    |            sMMMd                                                                                |   
    |            yMMMm                                                                                |   
    |            hMMMN                                                                                |  
    |            dMMMM                                                                                | 
    |            mMMMM`                                                                               |
    |            MMMMMs                                                                               |  
    |          yMMMMMMMd.                                                                             | 
    |         .dMMMMMMMMMN:                                                                           |   
    |        `mMMMMMMMMMMMM.                                                                          |   
    |        yMMMMMMMMMMMMMm`                                                                         | 
    |       /MMMMMs:-:oNMMMMs                                                                         | 
    |      `NM NM.     .MM MM-                                                                        | 
    |      /MM MMs     :MMM Ms                                                                        | 
    |      hMMh MMms+ohMMN MMN                                                                        | 
    |      dMMMN dMMMMMNs MMMM                                                                        | 
    |      oMMMMM MMMMMy MMMMd                                                                        |
    |      -NMh  mMMMMMMh  MM/                                                                        |
    |       -NMMM       MMMM+                                                                         |
    |        -ymMNNNNNNNMNh:                                                                          | 
    |           `.....`                                                                               |
    *-------------------------------------------------------------------------------------------------*'):-
    classe('Bardo').


descricao('
    
    *---------------------------------------------|BRUXO|---------------------------------------------*
    |Descrição: Um portador de magia derivada de barganha com uma entidade planar                     |
    |Dado de Vida: d8                                                                                 |
    |Habilidade Primária: Carisma                                                                     |  
    |Proeficiências em Resistência: Sabedoria & Carisma                                               |      
    |Proeficiências em Armas e Armaduras: Armaduras leves e armas simples                             |
    |Símbolo:                                                                                         |
                                                        
    *-------------------------------------------------------------------------------------------------*'):-
    classe('Bruxo').

descricao('
    
    *--------------------------------------------|CLÉRIGO|--------------------------------------------*
    |Descrição: Um campeão sacerdotal que empunha magia divina a serviço de um poder maior            |
    |Dado de Vida: d8                                                                                 |
    |Habilidade Primária: Sabedoria                                                                   |  
    |Proeficiências em Resistência: Sabedoria & Carisma                                               |      
    |Proeficiências em Armas e Armaduras: Armaduras leves e médias, escudos e armas simples           |
    |Símbolo:                                                                                         |
                                                        
    *-------------------------------------------------------------------------------------------------*'):-
    classe('Clérigo').

descricao('
    
    *--------------------------------------------|DRUIDA|---------------------------------------------*
    |Descrição: Um sacerdote da Crença Antiga, detentor dos poderes da natureza – luz da lua e        |
    |   crescimento das plantas, fogo e relâmpagos – e capaz de adotar formas animais                 |
    |Dado de Vida: d8                                                                                 |
    |Habilidade Primária: Sabedoria                                                                   |  
    |Proeficiências em Resistência: Inteligência & Sabedoria                                          |      
    |Proeficiências em Armas e Armaduras: Armaduras leves e médias (não-metálicas), escudos           | 
    |   (não-metálicos), clavas, adagas, dardos, azagaias, maças, bordões, cimitarras, foices, fundas | 
    |     e lanças                                                                                    |
    |Símbolo:                                                                                         |
                                                        
    *-------------------------------------------------------------------------------------------------*'):-
    classe('Druida').

descricao('
    
    *-------------------------------------------|FEITICEIRO|------------------------------------------*
    |Descrição: Um conjurador que possui magia latente advinda de um dom ou linhagem                  |
    |Dado de Vida: d6                                                                                 |
    |Habilidade Primária: Carisma                                                                     |  
    |Proeficiências em Resistência: Constituição & Carisma                                            |      
    |Proeficiências em Armas e Armaduras: Adagas, dardos, fundas, bordões e bestas leves              |
    |Símbolo:                                                                                         |
                                                        
    *-------------------------------------------------------------------------------------------------*'):-
    classe('Feiticeiro').

descricao('
    
    *-------------------------------------------|GUERREIRO|-------------------------------------------*
    |Descrição: Um mestre do combate, perito em uma vasta gama de armas e armaduras                   |
    |Dado de Vida: d10                                                                                |
    |Habilidade Primária: Força ou Destreza                                                           |  
    |Proeficiências em Resistência: Força & Constituição                                              |      
    |Proeficiências em Armas e Armaduras: Todas as armaduras, armas simples e marciais                |
    |Símbolo:                                                                                         |
                                                        
    *-------------------------------------------------------------------------------------------------*'):-
    classe('Guerreiro').

descricao('
    
    *--------------------------------------------|LADINO|---------------------------------------------*
    |Descrição: Um trapaceiro que utiliza de furtividade e astúcia para sobrepujar os obstáculos      | 
    |   e inimigos                                                                                    |
    |Dado de Vida: d8                                                                                 |
    |Habilidade Primária: Destreza                                                                    |  
    |Proeficiências em Resistência: Destreza & Inteligência                                           |      
    |Proeficiências em Armas e Armaduras: Armaduras leves, armas simples, bestas de mão, espadas      |
    |   longas, rapieiras, espadas curtas                                                             |
    |Símbolo:                                                                                         |                                                       
    *-------------------------------------------------------------------------------------------------*'):-
    classe('Ladino').

descricao('
    
    *---------------------------------------------|MAGO|----------------------------------------------*
    |Descrição: Um usuário de magia escolado, capaz de manipular as estruturas da realidade           |
    |Dado de Vida: d6                                                                                 |
    |Habilidade Primária: Inteligência                                                                |  
    |Proeficiências em Resistência: Inteligência & Sabedoria                                          |      
    |Proeficiências em Armas e Armaduras: Adagas, dardos, fundas, bastões e bestas leves              |
    |Símbolo:                                                                                         |
                                                        
    *-------------------------------------------------------------------------------------------------*'):-
    classe('Mago').

descricao('
    
    *--------------------------------------------|MONGE|----------------------------------------------*
    |Descrição: Um mestre das artes marciais, utilizando o poder corporal para atingir a perfeição    |
    |   física e espiritual                                                                           |
    |Dado de Vida: d8                                                                                 |
    |Habilidade Primária: Destreza & Sabedoria                                                        |  
    |Proeficiências em Resistência: Força & Destreza                                                  |      
    |Proeficiências em Armas e Armaduras: Armas simples e espadas curtas                              |
    |Símbolo:                                                                                         |
                                                        
    *-------------------------------------------------------------------------------------------------*'):-
    classe('Monge').

descricao('
    
    *-------------------------------------------|PALADINO|--------------------------------------------*
    |Descrição: Um guerreiro divino vinculado a um juramento sagrado                                  |
    |Dado de Vida: d10                                                                                |
    |Habilidade Primária: Força & Carisma                                                             |  
    |Proeficiências em Resistência: Sabedoria & Carisma                                               |      
    |Proeficiências em Armas e Armaduras: Todas as armaduras, escudos, armas simples e marciais       |
    |Símbolo:                                                                                         |
                                                        
    *-------------------------------------------------------------------------------------------------*'):-
    classe('Paladino').

descricao('
    
    *------------------------------------------|PATRULHEIRO|------------------------------------------*
    |Descrição: Um guerreiro que utiliza de poderio marcial e magia natural para combater ameaças nos |
    |   limites da civilização                                                                        |
    |Dado de Vida: d10                                                                                |
    |Habilidade Primária: Destreza & Sabedoria                                                        |  
    |Proeficiências em Resistência: Força & Destreza                                                  |      
    |Proeficiências em Armas e Armaduras: Armaduras leves, escudos, armas simples e marciais          |
    |Símbolo:                                                                                         |
                                                        
    *-------------------------------------------------------------------------------------------------*'):-
    classe('Patrulheiro').
% ------------------------------------------------------------------
% Regras sobre as aplicaçães
% ------------------------------------------------------------------
classe('Bárbaro') :-
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
classe('Clérigo') :-
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
classe('Clérigo') :-
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
