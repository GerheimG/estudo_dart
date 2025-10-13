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

  double sucessor = a + 1;
  double antecessor = a - 1;

  print(a);
  print('Sucessor =  $sucessor');
  print('Antecessor =  $antecessor');
}