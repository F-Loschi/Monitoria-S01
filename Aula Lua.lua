-- escopo_demo.lua
-- Exemplo executável de escopos em Lua

print("=== DEMONSTRAÇÃO DE ESCOPO EM LUA ===\n")

-- Escopo 1: Variável global (MÁ PRÁTICA, apenas para demonstração)
variavel_global = "Sou visível em todo lugar!"

-- Escopo 2: Variável local no escopo do arquivo
local variavel_modulo = "Sou visível apenas neste arquivo"

-- Função que demonstra escopo interno
function testar_escopo()
    -- Escopo 3: Variável local da função
    local variavel_funcao = "Só existo dentro desta função"
    
    print("Dentro da função:")
    print("-> Variável global:", variavel_global)           -- Acessível
    print("-> Variável módulo:", variavel_modulo)           -- Acessível  
    print("-> Variável função:", variavel_funcao)           -- Acessível
    print()
    
    -- Escopo 4: Bloco if
    if true then
        local variavel_bloco = "Só existo neste bloco if"
        print("Dentro do bloco if:")
        print("-> Variável bloco:", variavel_bloco)         -- Acessível
        print("-> Variável função:", variavel_funcao)       -- Acessível
        print()
    end
    
    -- print(variavel_bloco) -- ERRO: variável_bloco não está definida aqui!
end

-- Função que demonstra closure
function criar_contador()
    local contador = 0  -- Variável local que será "lembrada"
    
    return function()
        contador = contador + 1
        return contador
    end
end

-- Função que demonstra parâmetros locais
function somar(a, b)  -- a e b são locais a esta função
    local resultado = a + b  -- resultado também é local
    return resultado
end

-- Executando a demonstração
testar_escopo()

print("Fora da função:")
print("-> Variável global:", variavel_global)               -- Acessível
print("-> Variável módulo:", variavel_modulo)               -- Acessível
-- print("-> Variável função:", variavel_funcao) -- ERRO: não está definida!

print("\n=== PARÂMETROS LOCAIS ===")
local total = somar(5, 3)
print("5 + 3 =", total)
-- print(a) -- ERRO: 'a' não está definido fora da função

print("\n=== DEMONSTRANDO CONFLITOS ===")
local x = 10  -- x local

function testar_conflito()
    local x = 20  -- x diferente, local à função
    print("x dentro da função:", x)  -- Mostra 20
end

testar_conflito()
print("x fora da função:", x)        -- Mostra 10

print("\n=== FIM DA DEMONSTRAÇÃO ===")

-- 4_live_coding.lua
-- VARIÁVEIS E TIPOS (Imperativo: declaramos estado)
local nome = "Seu Nome"  -- String
local idade = 30          -- Number (não há distinção int/float)
local estaChovendo = false -- Boolean
local valorNulo = nil     -- Nil (representa a ausência de valor)

print("Nome:", nome, "| Tipo:", type(nome))
print("Idade:", idade, "| Tipo:", type(idade))

-- ESTRUTURAS DE CONTROLE (Imperativo: controlamos o fluxo)
-- If/Elseif/Else
if idade >= 18 then
  print(nome .. " é maior de idade.") -- .. é o operador de concatenação
elseif idade > 12 then
  print(nome .. " é um adolescente.")
else
  print(nome .. " é uma criança.")
end

-- For loop (numérico)
print("Contagem regressiva:")
for i = 10, 1, -1 do -- start, end, step
  print(i)
end

-- While loop
local contador = 5
print("Loop while:")
while contador > 0 do
  print("Contador:", contador)
  contador = contador - 1 -- Imperativo: modificamos o estado da variável
end

-- ESTRUTURAS DE DADOS (A famosa TABLE)
-- Como Array (lista indexada por números)
local frutas = {"maçã", "banana", "laranja"}
print("Primeira fruta:", frutas[1]) -- Lua indexa a partir de 1!
for i, fruta in ipairs(frutas) do
  print("Fruta " .. i .. ": " .. fruta)
end

-- Como Dicionário (HashMap)
local pessoa = {
  nome = "Maria",
  profissao = "Engenheira",
  idade = 25
}
print(pessoa.nome .. " é " .. pessoa.profissao) -- Acesso com ponto
pessoa.idade = 26 -- Imperativo: alterando o estado do dicionário

-- FUNÇÕES (Imperativo: agrupamos blocos de comandos)
-- Procedimento (não retorna valor)
function cumprimentar(nomePessoa)
  print("Olá, " .. nomePessoa .. "!")
end
cumprimentar("Carlos")

-- Função (retorna valor)
function dobrar(numero)
  return numero * 2
end
local resultado = dobrar(5)
print("O dobro de 5 é " .. resultado)
