% ==========================================
% CONTEXTO: SISTEMA DE FROTA AUTÔNOMA (SMART CITY)
% ==========================================

% FATOS SIMPLES: rota(PontoA, PontoB) - Conexões diretas da cidade
rota(bairro_norte, centro).
rota(bairro_sul, centro).
rota(centro, aeroporto).

% FATOS DE ATRIBUTOS: status(Veiculo, Estado) e modelo(Veiculo, Tipo)
status(carro_01, bateria_baixa).
status(carro_02, disponivel).
status(carro_03, em_manutencao).

modelo(carro_01, eletrico).
modelo(carro_02, eletrico).
modelo(carro_03, hibrido).


% ==========================================
% REGRAS LÓGICAS (O Coração do Programa)
% ==========================================

% PASSO 2: Regra com "E" (,) e "OU" (;)
% Um veículo precisa de recarga se o status for bateria_baixa OU se ele estiver em_manutencao E for eletrico.
precisa_recarga(V) :-
    modelo(V, eletrico),
    (status(V, bateria_baixa) ; status(V, em_manutencao)).


% PASSO 3: Diferenciação de Variáveis (\=) e Negação (\+)
% Dois veículos podem fazer uma viagem em dupla se forem modelos diferentes.
par_compativel(V1, V2) :-
    modelo(V1, T1),
    modelo(V2, T2),
    T1 \= T2.

% Um veículo está pronto para rodar se ele tiver alguma característica no banco, mas NÃO estiver com bateria_baixa
pronto_para_rua(V) :-
    modelo(V, _),
    \+ status(V, bateria_baixa),
    \+ status(V, em_manutencao).


% PASSO 4: Recursividade (Navegação em Cadeias de Conexão)
% Um veículo consegue fazer um trajeto se houver uma rota direta ou indireta entre os pontos.
conecta(Origem, Destino) :-
    rota(Origem, Destino). % Caso Base: rota direta

conecta(Origem, Destino) :-
    rota(Origem, Intermediario),
    conecta(Intermediario, Destino). % Passo Recursivo