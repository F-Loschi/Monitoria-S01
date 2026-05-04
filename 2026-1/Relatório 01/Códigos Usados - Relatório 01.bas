' ----------------------------------------------------------------
Dim nome As String
Dim idade As Integer

Print "--- CADASTRO ---"
nome = "ALUNO"
Print "DIGITE SUA IDADE:"
Input idade

Print "OLA "; nome
Print "IDADE: "; idade
Sleep

'-----------------------------------------------------------------
Dim idade As Integer
Print "--- TESTE DE IDADE ---"
Input "QUAL A SUA IDADE? ", idade

If idade >= 18 Then
    Print "MAIOR DE IDADE"
Else
    Print "MENOR DE IDADE"
End If
Sleep
'---------------------------------------------------------------
Print "--- CONTADOR ---"
Dim i As Integer

For i = 1 To 5
    Print "PASSO NUMERO: "; i
Next i

Print "FIM DO LOOP"
Sleep
'---------------------------------------------------------------
Dim contador As Integer
contador = 1

Print "--- INICIO DO WHILE ---"

' Enquanto a condição for verdadeira, o bloco se repete
While contador <= 5
    Print "O contador atual e: "; contador
    
    ' IMPORTANTE: Alterando o estado para evitar loop infinito
    contador = contador + 1
Wend
' != == <>
Print "--- FIM DO PROGRAMA ---"
Sleep
'---------------------------------------------------------------
Dim resultado As Integer
Dim x As Integer = 10
Dim y As Integer = 5

resultado = x + y
Print "A SOMA E: "; resultado

resultado = resultado * 2
Print "O DOBRO DA SOMA E: "; resultado
Sleep
'---------------------------------------------------------------
