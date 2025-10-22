// Conversão de energia: Faça um programa que leia um valor em joules e converta para calorias (1 caloria = 4,184 joules), exibindo os resultados.


import 'dart:io';

void main() {
  bool repetir = true;

  while (repetir) {
    double? joules;

    // Ler o valor em joules
    while (joules == null) {
      stdout.write('Insira o valor em joules: ');
      String? entrada = stdin.readLineSync();

      try {
        joules = double.parse(entrada!);
      } catch (e) {
        print('Valor inválido, tente novamente.');
      }
    }

    // Constante de conversão
    const double fatorConversao = 4.184;

    // Calcular calorias
    double calorias = joules / fatorConversao;

    // Mostrar resultado
    print('${joules.toStringAsFixed(2)} joules equivalem a ${calorias.toStringAsFixed(2)} calorias.');

    // Perguntar se deseja repetir
    stdout.write('Deseja repetir? (s/n): ');
    String? resposta = stdin.readLineSync();

    if (resposta == null || resposta.toLowerCase() != 's') {
      repetir = false;
    }
  }
}
