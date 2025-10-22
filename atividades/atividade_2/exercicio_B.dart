// Fatorial com repetição: Faça um programa que leia um número inteiro positivo e calcule seu fatorial usando um loop.

import 'dart:io';

void main() {
  bool repetir = true;

  while (repetir) {
    int? a;
    // Entrada de a
    while (a == null) {
      stdout.write('Insira um valor inteiro: ');
      String? valor = stdin.readLineSync();

      try {
        a = int.parse(valor!);
      } catch (e) {
        print('Valor inválido');
      }
    }
    int fatorial = 1;
    for (int i = 1; i <= a; i++) {
      fatorial *= i;
    }

    print('Fatorial: $fatorial');

    // Perguntar se deseja repetir
    stdout.write('\nDeseja repetir? (s/n): ');
    String? resposta = stdin.readLineSync();
    if (resposta == null || resposta.toLowerCase() != 's') {
      repetir = false;
    } 

  }
} 