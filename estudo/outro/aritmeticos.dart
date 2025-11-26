import 'dart:io';

void main() {
  int? a;
  int? b;
  while (a == null) {
    stdout.write('Entre com o valor de A: ');

    String? inputA = stdin.readLineSync();

    try {
      a = int.parse(inputA!);
    } catch (e) {
      print('Valor inválido');
    }

  }

  while (b == null) {
    stdout.write('Entre com o valor de B: ');

    String? inputB = stdin.readLineSync();

    try {
      b = int.parse(inputB!);
    } catch (e) {
      print('Valor inválido');
    }

  }

  int soma = a + b;

  int subtracao = a - b;

  int produto = a * b;

  double divisao = a / b;

  // Operador de divisão inteira
  int divInteira = a ~/ b;

  int restoDivisao = a % b;

  print("-" * 70);
  print('A soma de $a + $b = $soma');
  print('A subtração de $a - $b = $subtracao');
  print('A multiplicação de $a * $b = $produto');
  print('A divisão de $a / $b = ${divisao.toStringAsFixed(2)}');
  print('A divisão inteira de $a ~/ $b = $divInteira');
  print('O resto da divisão de $a % $b = $restoDivisao');
  print("-" * 70);
}