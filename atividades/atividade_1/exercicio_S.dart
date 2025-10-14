import 'dart:io';
import 'dart:math';

void main() {
  print('Escolha o tipo de cálculo de juros:');
  print('1 - Juros Simples');
  print('2 - Juros Compostos');

  String? opcao = stdin.readLineSync();

  if (opcao != '1' && opcao != '2') {
    print('Opção inválida.');
    return;
  }

  print('Digite o valor principal (P):');
  String? inputPrincipal = stdin.readLineSync();
  double? principal;
  if (inputPrincipal != null) {
    principal = double.tryParse(inputPrincipal);
  }

  print('Digite a taxa de juros anual (%):');
  String? inputTaxa = stdin.readLineSync();
  double? taxa;
  if (inputTaxa != null) {
    taxa = double.tryParse(inputTaxa);
  }

  print('Digite o tempo em anos:');
  String? inputTempo = stdin.readLineSync();
  double? tempo;
  if (inputTempo != null) {
    tempo = double.tryParse(inputTempo);
  }

  if (principal == null || taxa == null || tempo == null) {
    print('Entrada inválida.');
    return;
  }

  double i = taxa / 100;

  if (opcao == '1') {
    double juros = principal * i * tempo;
    print('Juros simples: ${juros.toStringAsFixed(2)}');
    print('Montante total: ${(principal + juros).toStringAsFixed(2)}');
  } else {
    double montante = principal * pow(1 + i, tempo);
    print('Juros compostos: ${(montante - principal).toStringAsFixed(2)}');
    print('Montante total: ${montante.toStringAsFixed(2)}');
  }
}
