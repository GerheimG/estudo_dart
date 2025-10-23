// Determinação do maior divisor comum (MDC): Faça um programa que receba dois números inteiros e calcule o MDC usando o algoritmo de Euclides com repetição.

import 'dart:io';


void main() {
  bool repetir = true;

  while (repetir) {
    int? a;
    int? b;

    while (a == null) {
      stdout.write('Insira o valor de A: ');
      String? valor = stdin.readLineSync();

      try {
        a = int.parse(valor!);
      } catch (e) {
        print('Valor inválido...');
        continue;
      }

      if (a < 0) {
        print('Valor inválido');
        continue;
      } else {

        while (b == null) {
          stdout.write('Insira o valor de B: ');
          String? valor = stdin.readLineSync();

          try {
            b = int.parse(valor!);
          } catch (e) {
            print('Valor inválido...');
            continue;
          }

          if (b < 0) {
            print('Valor inválido');
            continue;
          } else {
            int x = a;
            int y = b;

            while (y != 0) {
              int temp = y;
              y = x % y;
              x = temp;
            }

            print('O MDC entre $a e $b é $x');
          }
        }
      }
    }
    stdout.write('Deseja continuar: (s/n)');
    String? resposta = stdin.readLineSync();
      if (resposta == null || resposta.toLowerCase() != 's') {
        repetir = false;
      }
  }
}