import 'dart:io';

void main() {
  int? ano;
  int valorBase = 2025;
  while (ano == null) {
    stdout.write('Entre com seu ANO de nascimento: ');

    String? inputA = stdin.readLineSync();

    try {
      ano = int.parse(inputA!);
    } catch (e) {
      print('Valor inválido');
    }

  }

  int idade = valorBase - ano;
  print('Sua idade: $idade anos');
}