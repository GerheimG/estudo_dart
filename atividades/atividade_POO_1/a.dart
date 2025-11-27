import 'dart:io';

class Valor {
  double a;
  double b;

  Valor({required this.a, required this.b});

  double somaValor() => a + b;

  double subtrairValor() => a - b;

  double produtoValor() => a * b;

  double? divisaoValor() {
    if (b == 0) return null;
    return a / b;
  }

  double? restoValor() {
    if (b == 0) return null;
    return a % b;
  }

  int? divisaoIntValor() {
    if (b == 0) return null;
    return a ~/ b;
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
  double entradaA = lerNumero('Insira o valor A: ');
  double entradaB = lerNumero('Insira o valor B: ');

  Valor v = Valor(a: entradaA, b: entradaB);

  print('Soma: ${v.somaValor()}');
  print('Subtração: ${v.subtrairValor()}');
  print('Produto: ${v.produtoValor()}');

  print('Divisão: ${v.divisaoValor() ?? 'Divisão por zero não permitida'}');
  print('Resto divisão: ${v.restoValor() ?? 'Divisão por zero não permitida'}');
  print('Divisão inteira: ${v.divisaoIntValor() ?? 'Divisão por zero não permitida'}');
}
