//Faça um programa para converter medidas

import 'dart:io';


class Medida {
  double valor;

  Medida({required this.valor});


  double centimetros() {
    return valor * 100;
  }

  double milimetros() {
    return valor * 1000;
  }

}

double lerNumero(String mensagem) {
  while (true) {
    stdout.write(mensagem);
    String? entrada = stdin.readLineSync();

    double? numero = double.tryParse(entrada ?? '');

    if (numero != null) return numero;

    print('Valor inválido! Digite um número válido.');
  }
}

void main() {
  double entrada = lerNumero('Insira o valor em metros: ');

  Medida medida = Medida(valor: entrada);

  print('Transformado em cm: ${medida.centimetros().toStringAsFixed(2)}');
  print('Transformado em mm: ${medida.milimetros().toStringAsFixed(2)}');
}