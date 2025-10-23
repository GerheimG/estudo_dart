// Cálculo de velocidade média: Faça um programa que receba as distâncias percorridas a cada intervalo de tempo e calcule a velocidade média total do percurso.

import 'dart:io';


void main() {
  bool repetir = true;

  while (repetir) {
    double? distancia;
    double? tempo;

    while (distancia == null) {
      stdout.write('Insira a distância percorrida: ');
      String? valor = stdin.readLineSync();

      try {
        distancia = double.parse(valor!);
      } catch (e) {
        print('Valor inválido...');
        continue;
      }
    }

    while (tempo == null) {
      stdout.write('Insira o tempo que percorreu em segundos: ');
      String? valor = stdin.readLineSync();

      try {
        tempo = double.parse(valor!);
      } catch (e) {
        print('Valor inválido...');
        continue;
      }
    }

    double velocidadeMedia = distancia / tempo;

    print('A velocidade média será ${velocidadeMedia.toStringAsFixed(2)}');

    stdout.write('Deseja continuar: (s/n)');
    String? resposta = stdin.readLineSync();
      if (resposta == null || resposta.toLowerCase() != 's') {
        repetir = false;
      }
  }
}