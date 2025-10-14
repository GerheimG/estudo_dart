import 'dart:io';

void main() {
  print('Escolha a conversão:');
  print('1 - Celsius para Fahrenheit');
  print('2 - Fahrenheit para Celsius');

  stdout.write('Opção: ');
  String? opcao = stdin.readLineSync();

  if (opcao != '1' && opcao != '2') {
    print('Opção inválida.');
    return;
  }

  stdout.write('Digite a temperatura: ');
  String? inputTemp = stdin.readLineSync();
  double? temp = double.tryParse(inputTemp ?? '');

  if (temp == null) {
    print('Temperatura inválida.');
    return;
  }

  switch (opcao) {
    case '1': 
    double fahrenheit = temp * 9 / 5 + 32;
    print('$temp °C equivale a ${fahrenheit.toStringAsFixed(2)} °F');
    break;

    case '2':
    double celsius = (temp - 32) * 5 / 9;
    print('$temp °F equivale a ${celsius.toStringAsFixed(2)} °C');
  }
}
