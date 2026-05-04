print("--- TESTE DE SOMA ---")
print("Digite o primeiro valor:")
local n1 = tonumber(io.read())
print("Digite o segundo valor:")
local n2 = tonumber(io.read())

if n1 and n2 then
    local soma = n1 + n2
    print("A soma dos valores e: " .. soma)
else
    print("Entrada invalida! Digite apenas numeros.")
end

---

print("--- CONTADOR DE INTERVALO ---")
local inicio = 2
local fim = 8

-- Explique: i comeca em 'inicio' e vai ate 'fim'
for i = inicio, fim do
    print("Contando... " .. i)
end

---

print("--- MINHA LISTA DE SAUDE ---")
local frutas = {"Maca", "Banana", "Laranja"}

-- Adicionando um item novo no final
table.insert(frutas, "Uva")

-- O simbolo # antes do nome da tabela retorna a quantidade de itens
print("Quantidade de frutas na lista: " .. #frutas)

for i = 1, #frutas do
    print("Fruta " .. i .. ": " .. frutas[i])
end

---

print("--- ANALISADOR DE NUMEROS ---")
local num = 15

-- num % 2 == 0 significa que e par
-- num % 2 ~= 0 significa que e impar
if num % 5 == 0 then
    print(num .. " e divisivel por 5")
else
    print(num .. " nao e divisivel por 5")
end

---

-- Definindo a logica
function formatarNome(nome, sobrenome)
    local nomeCompleto = nome .. " " .. sobrenome
    return nomeCompleto -- Retorna o valor para quem chamou
end

-- Usando a funcao
local resultado = formatarNome("Felipe", "Loschi")
print("Nome formatado: " .. resultado)
