import 'dart:io';

void main() {
  double? a;
  while (a == null) {
  stdout.write('Insira o valor: ');
  String? inputA = stdin.readLineSync();

    try {
      a = double.parse(inputA!);
    } catch (e) {
      print('Valor inválido');
    }
  }

  if (a > 0) {
    double resultado = a * 2;
    print('O dobro de $a: $resultado');
  } else {
    double resultado = a * 3;
    print('O triplo de $a: $resultado');
  }
}