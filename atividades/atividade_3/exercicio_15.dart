// Contagem de Ocorrências de Status
// Dada uma lista de Maps, onde cada Map representa
// uma tarefa com a chave "status" (String), 
//conte e imprima o número total de tarefas para cada status distinto.

import 'dart:io';

void main() {
  while (true) {
  List<String> tarefa = [];
  List<String> status = [];
  int? quantidade;

  while (quantidade == null) {
    stdout.write('Quantas tarefas: ');
    String? entradaTarefa = stdin.readLineSync();

    if (entradaTarefa == null || entradaTarefa.isEmpty) {
      print('Entrada inválida.');
      continue;
    }

    quantidade = int.tryParse(entradaTarefa);
    if (quantidade == null || quantidade < 0) {
      print('Quantidade inválida');
      quantidade = null;
    }
  }

  for (int i = 0; i < quantidade; i++) {
    String? nomeTarefa;

    while (nomeTarefa == null) {
      stdout.write('${i + 1}º Tarefa: ');
      String? entradaNome = stdin.readLineSync();

      if (entradaNome == null || entradaNome.trim().isEmpty) {
        print('Entrada inválida');
        continue;
      }

      nomeTarefa = entradaNome.trim();
    }

    String? nomeStatus;

    while (nomeStatus == null) {
      stdout.write('Qual status: (preparo|pronto|entregue): ');
      String? entradaStatus = stdin.readLineSync();

      if (entradaStatus == null || entradaStatus.trim().isEmpty) {
        print('Entrada inválida');
        continue;
      }

      if (entradaStatus.toLowerCase() != 'pronto' && entradaStatus.toLowerCase() != 'preparo' && entradaStatus.toLowerCase() != 'entregue') {
        print('Entrada inváida');
        continue;
      }

      nomeStatus = entradaStatus.trim();
    }

    tarefa.add(nomeTarefa);
    status.add(nomeStatus);
  }

    num contadorPronto = 0;
    num contadorPreparo = 0;
    num contadorEntregue = 0;

    for (var n in status) {
      if (n == 'preparo') {
        contadorPreparo++;
      } else if (n == 'pronto') {
        contadorPronto++;
      } else if (n == 'entregue') {
        contadorEntregue++;
      }
    }

    for (int i = 0; i < tarefa.length; i++) {
      print('${tarefa[i]} - ${status[i]}');
    }
    print('Contagem de pedidos em preparo: $contadorPreparo');
    print('Contagem de pedidos prontos: $contadorPronto');
    print('Contagem de pedidos entregues: $contadorEntregue');

    while (true) {
      stdout.write('Deseja continuar: (s/n)');
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

