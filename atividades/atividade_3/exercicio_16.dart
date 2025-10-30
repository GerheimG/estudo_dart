//  Interseção de Duas Listas
// Dadas duas listas de inteiros, crie uma nova lista contendo
// apenas os elementos que estão presentes em ambas as listas (a interseção).

import 'dart:io';

void main() {

  while (true) {
    List<int> lista1 = [];
    List<int> lista2 = [];
    int? quantidade1;
    int? quantidade2;

    while (quantidade1 == null) {
      stdout.write('Quantos itens na primeira lista: ');
      String? entradaQtnd1 = stdin.readLineSync();

      if (entradaQtnd1 == null || entradaQtnd1.isEmpty) {
        print('Entrada inválida');
        continue;
      }

      quantidade1 = int.tryParse(entradaQtnd1);
      if (quantidade1 == null || quantidade1 < 0) {
        print('Insira uma quantidade válida');
        quantidade1 = null;
      }
    }

    for (int i = 0; i < quantidade1; i++) {
      int? numero1;
      while (numero1 == null) {
        stdout.write('${i + 1}º Valor: ');
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
      stdout.write('Quantos itens na segunda lista: ');
      String? entradaQtnd2 = stdin.readLineSync();

      if (entradaQtnd2 == null || entradaQtnd2.isEmpty) {
        print('Entrada inválida');
        continue;
      }

      quantidade2 = int.tryParse(entradaQtnd2);
      if (quantidade2 == null || quantidade2 < 0) {
        print('Insira uma quantidade válida');
        quantidade2 = null;
      }
    }
    for (int i = 0; i < quantidade2; i++) {
      int? numero2;
      while (numero2 == null) {
        stdout.write('${i + 1}º Valor: ');
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
      List<int> resultado = [];

      for (int n in lista1) {
        for (int m in lista2) {
          if (n == m) {
            resultado.add(n);
          }
        }
      }
      
      print(resultado);

      while (true) {
        stdout.write('Deseja continuar: (s/n)');
        String? resposta = stdin.readLineSync();

        if (resposta == null) continue;

        resposta = resposta.toLowerCase();

        if (resposta == 's') {
          break;
        } else if (resposta == 'n') {
          print('Fechando');
          return;
        } else {
          print('Resposta inválida');
        }
      }
  }
}

