import 'dart:io';

int mostrarMenu() {
  int? opcao;

  print('------ MENU DE OPÇÕES ------');
  print('1 - Cadastrar');
  print('2 - Listar');
  print('3 - Buscar');
  print('4 - Atualizar');
  print('5 - Remover');
  print('0 - Sair');

  while (opcao == null) {
    stdout.write('Escolha uma opção (0 - 5): ');
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.trim().isEmpty) {
      print('Entrada inválida. Tente novamente.\n');
      continue;
    }

    opcao = int.tryParse(entrada);

    if (opcao == null || opcao < 0 || opcao > 5) {
      print('Opção inválida. Escolha um número entre 0 e 5.\n');
      opcao = null;
    }
  }

  return opcao;
}
