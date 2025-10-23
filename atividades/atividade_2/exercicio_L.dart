// Resfriamento de um líquido: Faça um programa que simule o resfriamento de um líquido a partir de uma temperatura inicial até atingir a temperatura ambiente (25°C). A cada segundo, a temperatura diminui 2%. Imprima a temperatura a cada segundo.

import 'dart:io';


void main() {
  bool repetir = true;

  while (repetir) {
    double? a;

    while (a == null) {
      stdout.write('Insira a temperatura de um líquido: ');
      String? valor = stdin.readLineSync();

      try {
        a = double.parse(valor!);
      } catch (e) {
        print('Valor inválido');
        continue;
      }

      if (a <= 0) {
        print('A temperatura deve ser positiva');
      } else {
          double ambiente = 25;
          int segundos = 0;

          while (a! > ambiente) {
            print('$segundos segundos | temperatura: ${a.toStringAsFixed(2)} °C');
            a = a * 0.98;
            segundos++;
          }

          print('Temperatura ambiente atingida: ${a.toStringAsFixed(2)} °C');
      }
    }
    stdout.write('\nDeseja repetir? (s/n): ');
    String? resposta = stdin.readLineSync();
    if (resposta == null || resposta.toLowerCase() != 's') {
      repetir = false;
    }
  }
}