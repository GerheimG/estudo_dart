import 'dart:io';

void main() {
  double? a;
  double? b;

  while (a == 'null') {
    stdout.write('Insira o valor de A: ');
    String? inputA = stdin.readLineSync();

    try {
      a = double.parse(inputA!);
    } catch (e) {
      print('Valor inválido');
    }
  }
}