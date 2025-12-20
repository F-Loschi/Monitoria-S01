package main

import "fmt"

func somar(a int, b int) int {
	return a + b
}

func saudar(nome string) {
	fmt.Println("Olá,", nome)
}

func main() {
	//Hello World
		fmt.Println("Olá, Go!")

	
	//Variáveis
	// Declaração completa
	var nome string = "Maria"
	fmt.Println("Nome:", nome)

	// Inferência de tipo (short variable declaration)
	idade := 30
	fmt.Println("Idade:", idade)

	// Declaração de múltiplas variáveis
	var a, b int = 10, 20
	fmt.Println("a e b:", a, b)


	//Tipagem Estática
	var numero int = 42
	var preco float64 = 99.99
	var ehAtivo bool = true
	var mensagem string = "Aprendendo Go"

	fmt.Println("Número:", numero)
	fmt.Println("Preço:", preco)
	fmt.Println("Status:", ehAtivo)
	fmt.Println("Mensagem:", mensagem)


	// Entrada de Dados
	var nome2 string
	var idade2 int

	fmt.Print("Digite seu nome: ")
	fmt.Scanln(&nome2) // O '&' é importante para passar a referência da variável

	fmt.Print("Digite sua idade: ")
	fmt.Scanln(&idade2)

	fmt.Printf("Olá, %s! Você tem %d anos.\n", nome2, idade2)
	// Multiplas entradas
	var nome3 string
	var idade3 int

	fmt.Print("Digite seu nome e sua idade (separados por espaço): ")
	fmt.Scan(&nome3, &idade3)

	fmt.Printf("Olá, %s! Sua idade é %d.\n", nome3, idade3)


	//Estruturas de Controle
	{
	idade := 18

	// if/else
	if idade >= 18 {
			fmt.Println("Maior de idade.")
	} else {
			fmt.Println("Menor de idade.")
	}

	// switch
	dia := "terça"
	switch dia {
	case "segunda":
			fmt.Println("Começo de semana")
	case "terça", "quarta":
			fmt.Println("Meio de semana")
	default:
			fmt.Println("Final de semana")
	}
	
	}


	//Estruturas de Repetição
	// for como um loop for tradicional
	for i := 0; i < 3; i++ {
			fmt.Println("For tradicional:", i)
	}

	// for como um loop while
	contador := 0
	for contador < 3 {
			fmt.Println("For como while:", contador)
			contador++
	}

	// for range (iterando sobre um array)
	numeros := []int{1, 2, 3}
	for i, numero := range numeros {
			fmt.Printf("Índice %d, Valor %d\n", i, numero)
	}


	//Funções
	//Definições das funções estão fora da função main
	resultado := somar(10, 20)
	fmt.Println("10 + 20 =", resultado)

	saudar("Gopher")
}
