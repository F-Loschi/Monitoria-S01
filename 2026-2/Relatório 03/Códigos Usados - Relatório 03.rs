use std::io;

fn main() {
    let mut entrada = String::new();
    println!("Digite um numero:");
    io::stdin().read_line(&mut entrada).expect("Erro ao ler");
    
    // Convertendo String para numero (f64 para notas, i32 para inteiros)
    let numero: f64 = entrada.trim().parse().unwrap_or(0.0);
    
    if numero >= 60.0 {
        println!("Valor alto!");
    } else {
        println!("Valor baixo.");
    }
}

// -------------------------------------------------------------------------------------

fn main() {
    let texto = "Rust2026";
    println!("Comprimento: {}", texto.len());
    
    for c in texto.chars() {
        if c.is_digit(10) {
            println!("'{}' e um numero!", c);
        }
        if c.is_ascii_uppercase() {
            println!("'{}' e maiuscula!", c);
        }
    }
}


// -------------------------------------------------------------------------------------

// Funcao que recebe inteiros e retorna um booleano
fn eh_par(n: i32) -> bool {
    n % 2 == 0 // Em Rust, a ultima linha sem ponto-e-virgula e o retorno
}

fn main() {
    let resultado = eh_par(10);
    println!("O numero e par? {}", resultado);
}


// -------------------------------------------------------------------------------------

fn main() {
    let inferior = 1;
    let superior = 5;
    
    // O '..=' inclui o ultimo numero
    for i in inferior..=superior {
        println!("Iteracao: {}", i);
    }
}
