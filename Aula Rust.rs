use std::io;

fn somar(a: i32, b: i32) -> i32 {
    // Recebe dois i32, retorna um i32
    a + b // A última expressão é o valor de retorno (sem ponto e vírgula)
}

fn saudar(nome: &str) {
    // Recebe uma referência a string, não retorna nada
    println!("Olá, {}!", nome);
}

fn main() {
    println!("Olá, mundo!"); // Saída de dados
    println!("Bem-vindo à aula de Rust!");
    // println!("Você digitou: {}", input.trim());
    // -----------------------------------------------------
    let nome = "Ana"; // Variável imutável por padrão
    println!("Nome: {}", nome);

    let mut idade = 25; // Variável mutável
    println!("Idade inicial: {}", idade);
    idade = 26; // Podemos alterar
    println!("Nova idade: {}", idade);

    let pi = 3.14159; // Constantes são sempre imutáveis e globais (convenção: UPPERCASE)
    println!("Valor de PI: {}", pi);
    // -----------------------------------------------------
    let numero_inteiro = 10; // Rust infere i32
    let numero_flutuante = 20.5; // Rust infere f64

    let salario: f32 = 1500.50; // Declaração explícita do tipo f32
    let quantidade: u32 = 100; // Inteiro sem sinal de 32 bits

    println!("Número inteiro: {}", numero_inteiro);
    println!("Número flutuante: {}", numero_flutuante);
    println!("Salário: {}", salario);
    println!("Quantidade: {}", quantidade);

    // Exemplifique um erro de tipo:
    // let x: u32 = -5; // Erro! u32 não aceita negativos
    //------------------------------------------------------
    println!("Digite seu nome:");

    let mut entrada = String::new(); // cria uma String mutável para armazenar a entrada

    io::stdin() // lê da entrada padrão
        .read_line(&mut entrada) // coloca dentro da variável
        .expect("Falha ao ler entrada"); // caso dê erro

    println!("Olá, {}!", entrada.trim()); // trim() remove o \n do final
                                          //------------------------------------------------------
    println!("Digite um número:");

    let mut entrada = String::new();
    io::stdin()
        .read_line(&mut entrada)
        .expect("Falha ao ler entrada");

    let numero: i32 = entrada
        .trim()
        .parse()
        .expect("Por favor, digite um número válido");

    println!("Você digitou: {}", numero);
    //------------------------------------------------------
    let idade = 18;

    // if/else
    if idade >= 18 {
        println!("Maior de idade.");
    } else {
        println!("Menor de idade.");
    }

    // match (poderoso para múltiplos casos)
    let status_clima = "ensolarado";
    match status_clima {
        "ensolarado" => println!("Ótimo dia para passear!"),
        "chuvoso" => println!("Leve o guarda-chuva!"),
        "nublado" => println!("Pode esfriar um pouco."),
        _ => println!("Clima desconhecido."), // Coringa para outros casos
    }
    //------------------------------------------------------
    // loop (infinito, a menos que haja um break)
    let mut contador = 0;
    loop {
        println!("Loop infinito: {}", contador);
        contador += 1; // contador = contador + 1
        if contador == 3 {
            break; // Sai do loop
        }
    }

    // while
    let mut numero = 5;
    while numero > 0 {
        println!("While: {}", numero);
        numero -= 1; // numero = numero - 1
    }

    // for (iterando sobre uma coleção ou range)
    for i in 1..=3 {
        // Range de 1 a 3 (inclusive)
        println!("For: {}", i);
    }

    let frutas = ["maçã", "banana", "cereja"];
    for fruta in frutas.iter() {
        println!("Eu gosto de {}", fruta);
    }
    //------------------------------------------------------
    //Funções estão no escopo global
    let resultado = somar(10, 20);
    println!("10 + 20 = {}", resultado);

    saudar("Rustacean"); // Chamada da função
}
