import 'dart:io';

void main() {
  double? a;
  double? b;
  double? c;

  while (a == null) {
    stdout.write('Insira o valor de A: ');
    String? inputA = stdin.readLineSync();

    try {
      a = double.parse(inputA!);
    } catch (e) {
      print('Valor inválido');
    }
  }

  while (b == null) {
  stdout.write('Insira o valor de B: ');
  String? inputB = stdin.readLineSync();

    try {
      b = double.parse(inputB!);
      if (b == a) {
        print('O valor de B deve ser diferente de A.');
        b = null;
      }
    } catch (e) {
      print('Valor inválido');
    }
  }

  while (c == null) {
    stdout.write('Insira o valor de C: ');
    String? inputC = stdin.readLineSync();

      try {
        c = double.parse(inputC!);
        if (c == a || c == b) {
          print('O valor de C deve ser diferente de A ou B.');
          c = null;
        }
      } catch (e) {
        print('Valor inválido');
      }
  }

  List<double> valores = [a, b, c];
  valores.sort();

  print('Valores em ordem decrescente: ${valores[2]}, ${valores[1]}, ${valores[0]}');
}