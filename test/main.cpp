#include <iostream>
#include "bib.hpp"

using namespace std;

int main() {
    int erros = 0;

    // calcularFatorial
    if (calcularFatorial(0) != 1) {
        cout << "ERRO: fatorial de 0 deveria ser 1" << endl;
        erros++;
    }
    if (calcularFatorial(5) != 120) {
        cout << "ERRO: fatorial de 5 deveria ser 120" << endl;
        erros++;
    }
    if (calcularFatorial(10) != 3628800) {
        cout << "ERRO: fatorial de 10 deveria ser 3628800" << endl;
        erros++;
    }
    if (calcularFatorial(-1) != -1) {
        cout << "ERRO: fatorial de negativo deveria retornar -1" << endl;
        erros++;
    }

    if (erros == 0) {
        cout << "Todos os testes passaram!" << endl;
    }
    return erros;
}
