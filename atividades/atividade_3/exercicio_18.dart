// Checagem de Inclusão Total de Elementos
// Dadas duas listas de inteiros, Lista Principal e Lista Subconjunto,
// verifique se todos os elementos da Lista Subconjunto estão presentes
// na Lista Principal. O resultado deve ser um valor booleano (true ou false).

import 'dart:io';

void main() {
  
  while (true) {
    List<int> lista1 = [];
    List<int> lista2 = [];

    int? quantidade;
    while (quantidade == null) {
      stdout.write('Quantos elementos: ');
      String? entradaElem = stdin.readLineSync();

      if (entradaElem == null || entradaElem.isEmpty) {
        print('Entrada inválida');
        continue;
      }

      quantidade = int.tryParse(entradaElem);
      if (quantidade == null || quantidade < 0) {
        print('Entrada inválida');
        quantidade = null;
      }
    }

    for (int i = 0; i < quantidade; i++) {
      String? valorLista1;

      while (valorLista1 == null) {
        stdout.write('Insira o ${i + 1}º valor da primeira lista: ');
        String? entradaValor = stdin.readLineSync();
      }
    }


  }
}
