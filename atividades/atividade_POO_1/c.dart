// Faça um programa que peça 4 notas com  entrada de dados.
// O programa deverá calcular a média das notas digitadas.

import 'dart:io';


class Media {
  double n1;
  double n2;
  double n3;
  double n4;

  Media({required this.n1, required this.n2, required this.n3, required this.n4});

  calcularMedia() {
    return (n1 + n2 + n3 + n4) / 4;
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
  double nota1 = lerNumero('Insira a primeira nota: ');
  double nota2 = lerNumero('Insira a segunda nota: ');
  double nota3 = lerNumero('Insira a terceira nota: ');
  double nota4 = lerNumero('Insira a quarta nota: ');

  Media media = Media(n1: nota1, n2: nota2, n3: nota3, n4: nota4);

  print('Média das notas: ${media.calcularMedia()}');
}