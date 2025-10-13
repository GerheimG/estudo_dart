import 'dart:io';

void main() {
  double? a;
  while (a == null) {
  stdout.write('Insira o valor de A: ');
  String? inputA = stdin.readLineSync();

    try {
      a = double.parse(inputA!);
    } catch (e) {
      print('Valor inválido');
    }
  }

  double dobro = a * 2;
  double triplo = a * 3;

  print(a);
  print('Sucessor =  $dobro');
  print('Antecessor =  $triplo');
}