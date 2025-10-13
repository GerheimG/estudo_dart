import 'dart:io';

void main() {
  int? numero;
  while (numero == null) {
  stdout.write('Insira o valor para tabuada: ');
  String? inputA = stdin.readLineSync();

    try {
      numero = int.parse(inputA!);
    } catch (e) {
      print('Valor inválido');
    }
  }

  for (int i = 1; i <= 10; i++) {
    int resultado = numero * i;
    print('$numero x $i = $resultado');
  }
}