import 'listar_jogos.dart';
import 'dart:io';
void buscarJogo(List<Map<String, dynamic>> jogos) {
String? nomeBusca;
      while (nomeBusca == null) {
              listarJogos(jogos);
              print('-------------------------------------');
              stdout.write('Digite o nome do jogo que deseja buscar: ');
              String? entradaBusca = stdin.readLineSync();

              if (entradaBusca == null || entradaBusca.trim().isEmpty) {
                print('Entrada inválida');
                continue;
              }

              nomeBusca = entradaBusca.trim();

              List<Map<String, dynamic>> filtro = jogos.where(
                (Map<String, dynamic> contato) => 
                    contato['nome'].toLowerCase().contains(nomeBusca!.toLowerCase())
              ).toList();
              print('Resultado da Busca');
              listarJogos(filtro);
            break;
            }
            
}