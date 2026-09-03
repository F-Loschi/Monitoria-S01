package main
import "fmt"
// Recebe um int, retorna um int e um bool
func verificarPar(n int) (int, bool) {
    if n % 2 == 0 {
        return n, true
    }
    return n, false
}

func main() {
  fmt.Printf("Hello, World!")
  
  //--------------------------------------------------------------------
  
  // Declaração com tipo (Útil para variáveis globais ou inicialização vazia)
  var idade int = 20
  
  // Declaração curta (:=) - Cria e atribui o tipo automaticamente
  nome := "Felipe" 
  altura := 1.75 // float64
  
  fmt.Printf("Nome: %s, Idade: %d, Altura: %.2f\n", nome, idade, altura)
  
  //-----------------------------------------------------------------
  
  var numero int
  fmt.Print("Digite um valor: ")
  fmt.Scanln(&numero)
  
  // Exemplo de conversão (Cast)
  decimal := float64(numero) / 2.0
  fmt.Println("Metade decimal:", decimal)
  
  //------------------------------------------------------------------
  
  ladoA, ladoB := 10, 10
  switch {
    case ladoA == ladoB:
        fmt.Println("Os lados são iguais")
    case ladoA > ladoB:
        fmt.Println("A é maior")
    default:
        fmt.Println("B é maior")
  }
  
  
  numero := 1
  // Exemplo de IF
  if numero > 10 {
      fmt.Println("Maior que 10")
  } else {
      fmt.Println("Menor ou igual a 10")
  }
  
  //------------------------------------------------------------------
  
  // Estilo While (Enquanto condição for real)
  i := 0
  for i < 3 {
    fmt.Println("Repetição:", i)
    i++
  }
  
  // Estilo Clássico (Contador)
  for j := 0; j < 5; j++ {
    fmt.Println("Contando:", j)
  }
  
  // ----------------------------------------------------------------
  
  valor, status := verificarPar(9)
  fmt.Printf("O numero %d e par? %v\n", valor, status)
}
