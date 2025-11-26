import 'dart:io';
import 'buscar_jogo.dart';
import 'limpar.dart';
import 'listar_jogos.dart';
import 'menu_jogo.dart';
import 'add_jogos.dart';
import 'ordernar_lista.dart';
import 'remover_jogo.dart';


void main() {
  
  List<Map<String, dynamic>> jogos = [
     {
    'nome': 'The Legend of Zelda: Breath of the Wild','desenvolvedora': 'Nintendo','data': '03/03/2017',},
  {
    'nome': 'God of War','desenvolvedora': 'Santa Monica Studio','data': '20/04/2018',},
  {
    'nome': 'Cyberpunk 2077','desenvolvedora': 'CD Projekt Red','data': '10/12/2020',}
  ];
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
        print('-' * 50);
        print('A biblioteca está vazia. Nenhum jogo para remover.');
        print('-' * 50);
        break;
        } else {
          listarJogos(jogos);
          removerJogo(jogos);
          break;
        }           
    case 0:
      print('Saindo do programa...');
      limpar();
      exit(0);
      
  }

  }
}