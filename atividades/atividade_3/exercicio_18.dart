// Checagem de Inclusão Total de Elementos
// Dadas duas listas de inteiros, Lista Principal e Lista Subconjunto,
// verifique se todos os elementos da Lista Subconjunto estão presentes
// na Lista Principal. O resultado deve ser um valor booleano (true ou false).

import 'dart:io';

void main() {
  
  while (true) {
    List<int> lista1 = [];
    List<int> lista2 = [];

    int? quantidade1;
    int? quantidade2;

    while (quantidade1 == null) {
      stdout.write('Quantos elementos: ');
      String? entradaElem = stdin.readLineSync();

      if (entradaElem == null || entradaElem.isEmpty) {
        print('Entrada inválida');
        continue;
      }

      quantidade1 = int.tryParse(entradaElem);
      if (quantidade1 == null || quantidade1 < 0) {
        print('Entrada inválida');
        quantidade1 = null;
      }
    }

    for (int i = 0; i < quantidade1; i++) {
      int? numero1;

      while (numero1 == null) {
        stdout.write('Insira o ${i + 1}º valor da primeira lista: ');
        String? entradaValor = stdin.readLineSync();

        if (entradaValor == null || entradaValor.isEmpty) {
          print('Entrada inválida');
          continue;
        }
        numero1 = int.tryParse(entradaValor);
        if (numero1 == null) {
          print('Entrada inválida');
        }
      }
      lista1.add(numero1);
    }

    while (quantidade2 == null) {
      stdout.write('Quantos elementos na segunda lista: ');
      String? entradaElem = stdin.readLineSync();

      if (entradaElem == null || entradaElem.isEmpty) {
        print('Entrada inválida');
        continue;
      }

      quantidade2 = int.tryParse(entradaElem);
      if (quantidade2 == null || quantidade2 < 0) {
        print('Entrada inválida');
        quantidade2 = null;
      }
    }

    for (int i = 0; i < quantidade2; i++) {
      int? numero2;

      while (numero2 == null) {
        stdout.write('Insira o ${i + 1}º valor da primeira lista: ');
        String? entradaValor = stdin.readLineSync();

        if (entradaValor == null || entradaValor.isEmpty) {
          print('Entrada inválida');
          continue;
        }
        numero2 = int.tryParse(entradaValor);
        if (numero2 == null) {
          print('Entrada inválida');
        }
      }
      lista2.add(numero2);
    }
    bool? verifique = false;

    for (int n in lista1) {
      if (lista2.contains(n)) {
        verifique = true;
      }
    }
    print('Lista 1: $lista1');
    print('Lista 2: $lista2');
    print('Os elementos da Lista Subconjunto estão presentes na Lista Principal: $verifique');
  }
}
