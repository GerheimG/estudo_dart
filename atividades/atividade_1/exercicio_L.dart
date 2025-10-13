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

  if (a % 2 == 0) {
    print('Par');
  } else {
    print('ímpar');
  }
}