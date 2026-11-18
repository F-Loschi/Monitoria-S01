% ==========================================
% CONTEXTO: GUILDA DE AVENTUREIROS
% ==========================================

% FATOS SIMPLES: caminho(CidadeA, CidadeB) - Estradas de mão única do mapa
caminho(vila_inicial, floresta).
caminho(floresta, montanha).
caminho(montanha, castelo).
caminho(vila_inicial, porto).

% FATOS DE ATRIBUTOS: classe(Aventureiro, Classe) e status(Aventureiro, Estado)
classe(aria, maga).
classe(brom, guerreiro).
classe(lyra, arqueira).
classe(dax, ladino).
classe(nina, cleriga).

status(aria, disponivel).
status(brom, ferido).
status(lyra, disponivel).
status(dax, em_missao).
status(nina, disponivel).

% PASSO 1: Consultas aos fatos (no campo de query do SWISH)
% ?- classe(aria, maga).          -> true
% ?- classe(brom, maga).          -> false
% ?- classe(X, arqueira).         -> X = lyra
% ?- status(Quem, disponivel).    -> Quem = aria ; Quem = lyra ; Quem = nina
% ?- classe(_, ladino).           -> true (o _ ignora quem é)


% ==========================================
% REGRAS LÓGICAS (O Coração do Programa)
% ==========================================

% PASSO 2: Regra com "E" (,) e "OU" (;)
% Um aventureiro pode curar se for clériga OU maga.
pode_curar(A) :-
    classe(A, cleriga) ; classe(A, maga).

% Um aventureiro está apto para a missão se tiver uma classe E estiver disponível.
apto_para_missao(A) :-
    classe(A, _),
    status(A, disponivel).

% ?- pode_curar(X).         -> X = nina ; X = aria
% ?- apto_para_missao(X).   -> X = aria ; X = lyra ; X = nina


% PASSO 3: Diferenciação de Variáveis (\=) e Negação (\+)
% Dois aventureiros formam uma dupla válida se forem de classes diferentes.
dupla_valida(A, B) :-
    classe(A, C1),
    classe(B, C2),
    C1 \= C2.

% Um aventureiro precisa de descanso se NÃO estiver disponível.
precisa_descanso(A) :-
    classe(A, _),
    \+ status(A, disponivel).

% ?- dupla_valida(aria, X).   -> X = brom ; X = lyra ; X = dax ; X = nina
% ?- precisa_descanso(X).     -> X = brom ; X = dax


% PASSO 4: Recursividade (Caminhos indiretos no mapa)
% Dá para chegar de Origem a Destino se houver um caminho direto ou indireto.
alcanca(Origem, Destino) :-
    caminho(Origem, Destino).                 % Caso Base: caminho direto

alcanca(Origem, Destino) :-
    caminho(Origem, Intermediario),
    alcanca(Intermediario, Destino).          % Passo Recursivo

% ?- alcanca(vila_inicial, castelo).   -> true
% ?- alcanca(vila_inicial, X).         -> X = floresta ; X = porto ; X = montanha ; X = castelo
% ?- alcanca(porto, castelo).          -> false
