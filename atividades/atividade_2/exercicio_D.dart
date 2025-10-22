// Verificação de ano bissexto: Faça um programa que receba um ano e verifique se ele é bissexto, exibindo a resposta.


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

    if ((a % 400 == 0) || (a % 4 == 0 && a % 100 != 0)) {
      print('O ano $a é Bissexto');
    } else {
      print('O ano $a não é Bissexto');
    }

    // Perguntar se deseja repetir
    stdout.write('\nDeseja repetir? (s/n): ');
    String? resposta = stdin.readLineSync();
    if (resposta == null || resposta.toLowerCase() != 's') {
      repetir = false;
    } 

  }
} 