import 'dart:io';

void main() {
  double? reais;

  // Entrada do valor em reais
  while (reais == null) {
    stdout.write('Digite o valor em reais (R\$): ');
    String? input = stdin.readLineSync();

    try {
      reais = double.parse(input!);
    } catch (e) {
      print('Valor inválido. Tente novamente.');
    }
  }

  double dolar = 5.20;
  double euro = 5.50;
  double won = 0.0040;

  double dolares = reais / dolar;
  double euros = reais / euro;
  double wons = reais / won;

  print('\nCom R\$${reais.toStringAsFixed(2)} você pode comprar aproximadamente:');
  print('- \$${dolares.toStringAsFixed(2)} dólares');
  print('- €${euros.toStringAsFixed(2)} euros');
  print('- ₩${wons.toStringAsFixed(0)} wons sul-coreanos');
}