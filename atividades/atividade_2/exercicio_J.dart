// Contagem regressiva: Faça um programa que receba um número inteiro positivo e faça uma contagem regressiva até zero, imprimindo cada número.

import 'dart:io';


void main() {
  bool repetir = true;

  while (repetir) {
    int? a;

    while (a == null) {
      stdout.write('Insira um valor: ');
      String? valor = stdin.readLineSync();

      try {
        a = int.parse(valor!);
      } catch (e) {
        print('Valor inválido');
        break;
      }

      
      for (int nume = a; nume >= 0; nume--) {
        print(nume);
      }
    }

    stdout.write('Deseja continuar: (s/n): ');
    String? resposta = stdin.readLineSync();
    if (resposta == null || resposta.toLowerCase() != 's') {
        repetir = false;
    }
  }
}