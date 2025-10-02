import 'dart:io';

void main() {
  double? nota1;
  double? nota2;
  double? nota3;
  double? nota4;

  while (nota1 == null) {
    stdout.write('Entre com a primeira nota: ');

    String? inputA = stdin.readLineSync();

    try {
      nota1 = double.parse(inputA!);
    } catch (e) {
      print('Valor inválido');
    }

  }
  
  while (nota2 == null) {
    stdout.write('Entre com a segunda nota: ');

    String? inputA = stdin.readLineSync();

    try {
      nota2 = double.parse(inputA!);
    } catch (e) {
      print('Valor inválido');
    }

  }
  
  while (nota3 == null) {
    stdout.write('Entre com a terceira nota: ');

    String? inputA = stdin.readLineSync();

    try {
      nota3 = double.parse(inputA!);
    } catch (e) {
      print('Valor inválido');
    }

  }
  
  while (nota4 == null) {
    stdout.write('Entre com a quarta nota: ');

    String? inputA = stdin.readLineSync();

    try {
      nota4 = double.parse(inputA!);
    } catch (e) {
      print('Valor inválido');
    }

  }
  double total = nota1 + nota2 + nota3 + nota4;
  double media = total / 4;

  print('Sua média: $media');
  
}