import 'dart:io';

void main() {
  double? a;
  double? b;

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
  String? inputA = stdin.readLineSync();

    try {
      b = double.parse(inputA!);
    } catch (e) {
      print('Valor inválido');
    }
  }

  double total = a / b;
  print(total.toStringAsFixed(4));
}