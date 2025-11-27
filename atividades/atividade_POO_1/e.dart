// Faça um programa que recebe um 
//número inteiro e mostre o sucessor e antecessor.

import 'dart:io';


class Numero {
  int valor1;

  Numero({required this.valor1});


  int sucessor() {
    return valor1 + 1;
  }

  int antecessor() {
    return valor1 - 1;
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

  print('Sucessor: ${nume.sucessor()}');
  print('Antecessor: ${nume.antecessor()}');
}