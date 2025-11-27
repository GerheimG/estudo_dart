// Faça um programa que receba e divida 2 números.
// A saída da divisão precisará ser formatada com 4 casas decimais.


import 'dart:io';


class Conta {
  double valor1;
  double valor2;

  Conta({required this.valor1, required this.valor2});

  double casasDecimais() {
    return valor1 / valor2;
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
  double entrada1 = lerNumero('Insira o valor 1: ');
  double entrada2 = lerNumero('Insira o valor 2: ');

  Conta conta = Conta(valor1: entrada1, valor2: entrada2);

  print('Resultado: ${conta.casasDecimais().toStringAsFixed(4)}');
}