// Tabela de velocidades: Faça um programa que leia o tempo (em segundos) e tempo aceleração constante de um objeto e imprima sua velocidade tempo cada segundo até o tempo informado.

import 'dart:io';

void main() {
  bool repetir = true;

  while (repetir) {
    int? tempo;
    double? aceleracao;
    // Entrada de tempo
    while (tempo == null) {
      stdout.write('Insira o tempo: ');
      String? valor = stdin.readLineSync();

      try {
        tempo = int.parse(valor!);
      } catch (e) {
        print('Valor inválido');
      }
    }

    while (aceleracao == null) {
      stdout.write('Insira a aceleração: ');
      String? valor = stdin.readLineSync();

      try {
        aceleracao = double.parse(valor!);
      } catch (e) {
        print('Valor inválido');
      }
    }

    for (int t = 1; t <= tempo; t++) {
      double velocidade = aceleracao * t;
      print('Tempo: $t s - Velocidade: ${velocidade.toStringAsFixed(2)} m/s');
    }

    // Perguntar se deseja repetir
    stdout.write('\nDeseja repetir? (s/n): ');
    String? resposta = stdin.readLineSync();
    if (resposta == null || resposta.toLowerCase() != 's') {
      repetir = false;
    } 

  }
} 