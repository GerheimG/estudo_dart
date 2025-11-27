// Faça um programa que peça um ano qualquer. O programa deverá calcular e imprimir a idade.

import 'dart:io';


class Ano {

  int ano;

  Ano({required this.ano});

  int calcularIdade() {
    return 2025 - ano;    
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
  print('');
  int entradaAno = lerNumero('Insira o ano de nascimento: ');

  Ano ano = Ano(ano: entradaAno);

  print('Sua idade: ${ano.calcularIdade()}');
}
