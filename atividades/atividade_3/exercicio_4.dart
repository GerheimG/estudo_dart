// Multiplicação de Elementos Ímpares
// Percorra uma lista de números inteiros. Para cada número, verifique se ele é ímpar. Se for ímpar, ele deve ser multiplicado por 2.
// Se for par, ele deve permanecer inalterado. O resultado final deve ser uma nova lista com os valores transformados.

import 'dart:io';

void main() {

  while (true) {
    List<int> numeros = [];
    int? quantidade;

    while (quantidade == null) {
      stdout.write('Quantos números: ');
      String? entradaQtd = stdin.readLineSync();

      if (entradaQtd == null || entradaQtd.isEmpty) {
        print('Entrada inválida');
        continue;
      }

      quantidade = int.tryParse(entradaQtd);
      if (quantidade == null || quantidade < 0) {
        print('Insira uma quantidade válida');
        quantidade = null;
      }
    }

    for (int i = 0; i < quantidade; i++) {
      int? numero;
      while (numero == null) {
        stdout.write('${i + 1}º Valor: ');
        String? entradaValor = stdin.readLineSync();

        if (entradaValor == null || entradaValor.isEmpty) {
          print('Entrada inválida');
          continue;
        }

        numero = int.tryParse(entradaValor);
        if (numero == null) {
          print('Valor inválido');
        }
      }
      numeros.add(numero);
    }

      
      List<int> resultado = [];


      for (var n in numeros) {
        if (n % 2 != 0) {
          resultado.add(n * 2);
        } else {
          resultado.add(n);
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
