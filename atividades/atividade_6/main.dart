import 'dart:io';
import 'buscar_jogo.dart';
import 'limpar.dart';
import 'listar_jogos.dart';
import 'menu_jogo.dart';
import 'add_jogos.dart';
import 'ordernar_lista.dart';
import 'remover_jogo.dart';


void main() {
  
  List<Map<String, dynamic>> jogos = [];
  ordenarJogosPorNome(jogos);
  
  while (true) {
  int? opcao = mostrarMenu();

  switch (opcao) {
    case 1:
      limpar();
      adicionarJogos(jogos);
      break;
    
    case 2:
      limpar();
      listarJogos(jogos);
      break;
    case 3:
      limpar();
      buscarJogo(jogos);
      break;

    case 4:
      limpar();
      if (jogos.isEmpty) {
        print('A agenda está vazia. Nenhum contato para remover.');
        break;
        } else {
          listarJogos(jogos);
          removerJogo(jogos);
          break;
        }           
    case 0:
      print('Saindo do programa...');
      exit(0);
  }

  }
}