// Soma dos múltiplos: Faça um programa que receba um número inteiro N e calcule a soma de todos os múltiplos de 3 ou 5 menores que N.

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
    int soma = 0;
    for (int i = 1; i < a; i++) {
      if (i % 3 == 0 || i % 5 == 0)
      soma += i;
    }

    print('Soma: $soma');

    // Perguntar se deseja repetir
    stdout.write('\nDeseja repetir? (s/n): ');
    String? resposta = stdin.readLineSync();
    if (resposta == null || resposta.toLowerCase() != 's') {
      repetir = false;
    } 

  }
} 