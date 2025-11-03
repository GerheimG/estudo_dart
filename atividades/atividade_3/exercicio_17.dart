// Normalização e Classificação de Dados
// Dada uma lista de strings com valores duplicados e em ordem aleatória,
// o objetivo é primeiro remover todas as duplicatas e, em seguida,
// ordenar a lista resultante em ordem alfabética.


import 'dart:io';

void main() {

  while (true) {
    List<String> dados = [];
    int? quantidade;

    while (quantidade == null) {
      stdout.write('Quantos valores: ');
      String? entradaQtd = stdin.readLineSync();

      if (entradaQtd == null || entradaQtd.isEmpty) {
        print('Entrada inválida');
        continue;
      }

      quantidade = int.tryParse(entradaQtd);
      if (quantidade == null || quantidade < 0) {
        print('Entrada inválida');
        quantidade = null;
      }
    }
    for (int i = 0; i < quantidade; i++) {

      String? nomeDados;
      while (nomeDados == null) {
        stdout.write('${i + 1}º Dado: ');
        String? entradaDado = stdin.readLineSync();

        if (entradaDado == null || entradaDado.trim().isEmpty) {
          print('Entrada inválida');
          continue;
        }

        nomeDados = entradaDado.trim();
      }

      dados.add(nomeDados);
    }
    // Remove os elementos duplicados da lista 'dados' e cria uma nova lista apenas com valores distintos
    print('Lista original: $dados');
    List<String> distintos = dados.toSet().toList();
    print('Lista sem valores duplicados: $distintos');
    distintos.sort();
    print('Lista sem valores duplicados e em ordem: $distintos');
    
    while (true) {
      stdout.write('Deseja continuar (s/n): ');
      String? resposta = stdin.readLineSync();

      if (resposta == null) continue;

      resposta = resposta.toLowerCase();
      if (resposta == 's') {
        break;
      } else if (resposta == 'n') {
        return;
      } else {
        print('Entrada inválida');
      }
    }

  }
}