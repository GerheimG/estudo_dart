import 'dart:io';

void main() {
  double? a;
  while (a == null) {
  stdout.write('Insira o valor da medida em metros: ');
  String? inputA = stdin.readLineSync();

    try {
      a = double.parse(inputA!);
    } catch (e) {
      print('Valor inválido');
    }
  }
  int? opcao;
  while (opcao == null) {
    print('\nEscolha a opção:');
    print('1 - Converter pra CM');
    print('2 - Converter pra MM');
    stdout.write('Opção: ');
    String? inputOpcao = stdin.readLineSync();

    try {
      opcao = int.parse(inputOpcao!);
      if (opcao != 1 && opcao != 2) {
        print('Opção inválida. Digite 1 ou 2');
        opcao = null;
      }
    } catch (e) {
      print('Escolha uma opção válida.');
    }
  }

  switch (opcao) {
    case 1:
      double cm = a * 100;
      print('${a.toStringAsFixed(2)} metros equivalem a ${cm.toStringAsFixed(2)} centímetros');
      break;
    case 2:
      double mm = a * 1000;
      print('${a.toStringAsFixed(2)} metros equivalem a ${mm.toStringAsFixed(2)} milimetros');
      break;
  }
}