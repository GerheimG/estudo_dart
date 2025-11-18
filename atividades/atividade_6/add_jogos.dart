import 'dart:io';

import 'formatar_jogo.dart';

// void

void adicionarJogos(List<Map<String, dynamic>> jogos) {
  String? nomeJogo;
  String? nomeDesenvolvedora;
  String? dataJogo;
  while (nomeJogo == null) {
              stdout.write('Insira o nome do jogo: ');
              String? entradaNome = stdin.readLineSync();

              if (entradaNome != null && entradaNome.trim().isNotEmpty) {
                nomeJogo = formatarNome(entradaNome);
              } else {
                print('Nome inválido.');
                continue;
              }
            while (dataJogo == null) {
                  stdout.write('Insira a data de lançamento: ');
                  String? entradaData = stdin.readLineSync();

                  if (entradaData == null || entradaData.isEmpty) {
                    print('Insira uma data válida.');
                    continue;
                  }

                  dataJogo = entradaData;
                }
              
            while (nomeDesenvolvedora == null) {
                  stdout.write('Insira o nome da desenvolvedora: ');
                  String? entradaNomeDesen = stdin.readLineSync();

                  if (entradaNomeDesen == null || entradaNomeDesen.isEmpty) {
                    print('Entrada inválida');
                    continue;
                  }

                  nomeDesenvolvedora = entradaNomeDesen;
                  nomeDesenvolvedora = formatarNome (nomeDesenvolvedora);
                }
              jogos.add({
                'nome' : nomeJogo,
                'data' : dataJogo,
                'desenvolvedora' : nomeDesenvolvedora
              });
    }
}