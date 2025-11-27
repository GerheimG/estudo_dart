// Faça um programa que receba um número
// qualquer e calcule o dobro e o triplo desse número.

import 'dart:io';

class Numero {
  int valor1;

  Numero({required this.valor1});


  int dobro() {
    return valor1 * 2;
  }

  int triplo() {
    return valor1 * 3;
  }
}

int lerNumero(String mensagem) {
  while (true) {
    stdout.write(mensagem);
    String? entrada = stdin.readLineSync();

    int? numero = int.tryParse(entrada ?? '');

    if (numero != null) return numero;

    print('Valor inválido! Digite um número válido.');
  }
}

void main() {
  int entrada = lerNumero('Insira um valor: ');

  Numero nume = Numero(valor1: entrada);

  print('Dobro: ${nume.dobro()}');
  print('Triplo: ${nume.triplo()}');
}