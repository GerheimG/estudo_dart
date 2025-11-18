import 'dart:io';


// função com retorno
int mostrarMenu() {
  int? opcao;

  print('------ MENU DE OPÇÕES ------');
  print('1 - Adicionar Jogo');
  print('2 - Listar jogos');
  print('3 - Buscar jogo');
  print('0 - Sair');

  while (opcao == null) {
    stdout.write('Escolha uma opção (0 - 3): ');
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.trim().isEmpty) {
      print('Entrada inválida. Tente novamente.\n');
      continue;
    }

    opcao = int.tryParse(entrada);

    if (opcao == null || opcao < 0 || opcao > 3) {
      print('Opção inválida. Escolha um número entre 0 e 2.\n');
      opcao = null;
    }
  }

  return opcao;
}