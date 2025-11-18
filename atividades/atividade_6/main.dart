import 'dart:io';
import 'buscar_jogo.dart';
import 'listar_jogos.dart';
import 'menu_jogo.dart';
import 'add_jogos.dart';
import 'ordernar_lista.dart';


void main() {
  
  List<Map<String, dynamic>> jogos = [];
  ordenarJogosPorNome(jogos);
  
  while (true) {
  int? opcao = mostrarMenu();

  switch (opcao) {
    case 1:
      adicionarJogos(jogos);
      break;
    
    case 2:
      listarJogos(jogos);
      break;
    case 3:
      buscarJogo(jogos);
      break;
    case 0:
      print('Saindo do programa...');
      exit(0);
  }

  }
}