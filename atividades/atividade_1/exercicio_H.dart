import 'dart:io';

void main() {
  while (true) {
    double? a;

    // Entrada da medida em metros
    while (a == null) {
      stdout.write('Insira o valor da medida em metros: ');
      String? inputA = stdin.readLineSync();

      try {
        a = double.parse(inputA!);
      } catch (e) {
        print('Valor inválido, digite um número válido.');
      }
    }

    int? opcao;

    // Menu de opções
    while (opcao == null) {
      print('\nEscolha a opção:');
      print('1 - Converter pra CM');
      print('2 - Converter pra MM');
      print('3 - Sair');
      stdout.write('Opção: ');
      String? inputOpcao = stdin.readLineSync();

      try {
        opcao = int.parse(inputOpcao!);
        if (opcao < 1 || opcao > 3) {
          print('Opção inválida. Digite 1, 2 ou 3.');
          opcao = null;
        }
      } catch (e) {
        print('Escolha uma opção válida.');
      }
    }

    // Executando a opção
    switch (opcao) {
      case 1:
        double cm = a * 100;
        print('${a.toStringAsFixed(2)} metros equivalem a ${cm.toStringAsFixed(2)} centímetros');
        break;
      case 2:
        double mm = a * 1000;
        print('${a.toStringAsFixed(2)} metros equivalem a ${mm.toStringAsFixed(2)} milímetros');
        break;
      case 3:
        stdout.write('Deseja realmente sair? (s/n): ');
        String? continuar = stdin.readLineSync();
        if (continuar?.toLowerCase() == 's') {
          print('Saindo...');
          return; // Encerra o programa
        } else {
          continue; // Volta ao início do loop principal
        }
    }

    // Pergunta se o usuário quer fazer outra conversão
    stdout.write('\nDeseja fazer outra conversão? (s/n): ');
    String? repetir = stdin.readLineSync();
    if (repetir?.toLowerCase() != 's') {
      print('Encerrando o programa.');
      break;
    }
  }
}
