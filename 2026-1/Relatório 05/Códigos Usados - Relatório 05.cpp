#include <iostream>
#include <string>
using namespace std;

void mostrarLista(int lista[], int tam) {
    for(int i = 0; i < tam; i++) {
        cout << "Item " << i << ": " << lista[i] << endl;
    }
}

void contagem(int n) {
    if (n == 0) return; // Ponto de parada
    cout << n << "... ";
    contagem(n - 1); // Chamada recursiva
}

int main() {
    int idade = 20;           // Inteiro
    float nota = 9.5;         // Decimal
    string nome = "Felipe";   // Texto

  // cout << exibe a mensagem na tela
    cout << "Nome: " << nome << " - Nota: " << nota << endl;

  // ------------------------------------------------------------------
    int n;
    cout << "Digite um numero: ";
    cin >> n; // O programa espera você digitar
    cout << "O dobro e: " << n * 2 << endl;
  //-------------------------------------------------------------------
    int numeros[3] = {10, 20, 30};
    mostrarLista(numeros, 3); // Chamada da função
  //-------------------------------------------------------------------
    int sala[2][2] = {{0, 1}, {1, 0}}; // Matriz 2x2

    for(int i = 0; i < 2; i++) {       // Percorre linhas
        for(int j = 0; j < 2; j++) {   // Percorre colunas
            cout << "[" << sala[i][j] << "] ";
        }
        cout << endl; // Quebra a linha visualmente
    }
  //------------------------------------------------------------------
    contagem(5); // Chamada na main
    return 0;
}
