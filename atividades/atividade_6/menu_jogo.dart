import 'dart:io';


// função com retorno
int mostrarMenu() {
  int? opcao;
  print(' ');
  print('------ MENU DE OPÇÕES ------');
  print(' ');
  print('1 - Adicionar Jogo');
  print('2 - Listar jogos');
  print('3 - Buscar jogo');
  print('4 - Remover jogo');
  print('0 - Sair');
  print(' ');

  while (opcao == null) {
    stdout.write('Escolha uma opção (0 - 4): ');
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.trim().isEmpty) {
      print('Entrada inválida. Tente novamente.\n');
      continue;
    }

    opcao = int.tryParse(entrada);

    if (opcao == null || opcao < 0 || opcao > 4) {
      print('Opção inválida. Escolha um número entre 0 e 4.\n');
      opcao = null;
    }
  }

  return opcao;
}