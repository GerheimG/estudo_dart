//  Identificação e Contagem de Ocorrências Distintas
// Dada uma lista de inteiros que contém valores duplicados, o desafio é determinar quantos valores únicos existem na lista. 
//A solução deve percorrer a lista e construir uma nova coleção (ou usar um Set temporário, se permitido, ou uma lista auxiliar) 
//para armazenar apenas os elementos que ainda não foram vistos, reportando o total de elementos únicos ao final.

import 'dart:io';

void main() {

  while (true) {
    List<int> numeros = [];
    int? quantidade;

    while (quantidade == null) {
      stdout.write('Quantos números');
      String? entradaNum = stdin.readLineSync();

      if (entradaNum == null || entradaNum.isEmpty) {
        print('Entrada inválida; Digite um número válido');
        continue;
      }

      quantidade = int.tryParse(entradaNum);
      if (quantidade == null || quantidade < 0) {
        print('Quantidade inválida.');
        quantidade = null;
      }
    }

    for (int i = 0; i < quantidade; i++) {
      int? numero;
      while (numero == null) {
        stdout.write('${i + 1}º Número: ');
        String? entradaNumero = stdin.readLineSync();

        if (entradaNumero == null || entradaNumero.isEmpty) {
          print('Insira uma entrada válida');
          continue;
        }

        numero = int.tryParse(entradaNumero);
        if (numero == null) {
          print('Número inválido');
        }
      }
      numeros.add(numero);
    }
      print('Lista original: $numeros');
      List<int> unicos = [];

      for (int n in numeros) {
        if (!unicos.contains(n)) {
          unicos.add(n);
        }
      }
      print('Números únicos: $unicos');
      int totalUnicos = unicos.length;
      print('Quantidade de valores distintos: $totalUnicos');

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
