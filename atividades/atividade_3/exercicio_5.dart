// Determinação do Segundo Valor de Pico
// Dada uma lista de números inteiros, encontre e imprima o segundo maior valor presente na lista.
// A lista pode conter duplicatas, mas o segundo maior valor deve ser o valor distinto que é 
//imediatamente menor que o maior valor.

import 'dart:io';

void main() {

  while (true) {
    List<int> numeros = [];
    int? quantidade;

    while (quantidade == null) {
      stdout.write('Quantos valores: ');
      String? entradaValor = stdin.readLineSync();

      if (entradaValor == null || entradaValor.isEmpty) {
        print('Valor inválido');
        continue;
      }

      quantidade = int.tryParse(entradaValor);
      if (quantidade == null || quantidade < 0) {
        print('Entrada inválida');
        quantidade = null;
      }
    }

    for (int i = 0; i < quantidade; i++){
      int? numero;
      while (numero == null) {
        stdout.write('${i + 1}º Valor (insira duplicatas)');
        String? entradaValor = stdin.readLineSync();

        if (entradaValor == null || entradaValor.isEmpty) {
          print('Entrada inválida');
          continue;
        }
        numero = int.tryParse(entradaValor);
        if (numero == null) {
          print('Entrada inválida');
        }
      }
      numeros.add(numero);
    }
    // Remove os elementos duplicados da lista 'numeros' e cria uma nova lista apenas com valores distintos
      List<int> distintos = numeros.toSet().toList();

      distintos.sort();
      if (distintos.length < 2) {
        print('Não há segundo maior valor, pois todos os números são iguais ou há apenas um valor inserido.');
      } else {
        int segundoMaior = distintos[distintos.length - 2];
        print('O segundo maior valor é: $segundoMaior');
      }

      while (true) {
        stdout.write('Deseja continuar: (s/n)');
        String? resposta = stdin.readLineSync();

        if (resposta == null) continue;

        resposta = resposta.toLowerCase();
        if (resposta == 's') {
          break;
        } else if (resposta == 'n') {
          print('Fechando');
          return;
        } else {
          print('Resposta inválida');
        }
      }
  }
}

