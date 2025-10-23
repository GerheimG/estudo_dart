// Sequência de potências:Faça um programa que receba um número inteiro N e imprima as potências de 2 de 0 até N (2⁰, 2¹, ..., 2ᴺ).

import 'dart:io';
import 'dart:math';


void main() {
  bool repetir = true;


  while (repetir) {
    int? a;

    while (a == null) {
      stdout.write('Insira o número da potência: ');
      String? valor = stdin.readLineSync();

      try {
        a = int.parse(valor!);
      } catch (e) {
        print('Valor inválido');
        continue;
      }

      if (a < 0) {
        print('Valor inválido');
        continue;
      } else {
        for (int i = 0; i <= a; i++) {
          int potencia = pow(2, i).toInt();
          print('2^$i = $potencia');
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