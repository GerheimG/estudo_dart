import 'dart:io';

void main() {
  double? peso;
  double? altura;

  while (peso == null) {
    stdout.write('Informe seu peso em kg: ');
    String? inputPeso = stdin.readLineSync();

    try {
      peso = double.parse(inputPeso!);
      if (peso <= 0) {
        print('Peso deve ser maior que zero.');
        peso = null;
      }
    } catch (e) {
      print('Valor inválido para peso.');
    }
  }

  while (altura == null) {
    stdout.write('Informe sua altura em metros (ex: 1.75): ');
    String? inputAltura = stdin.readLineSync();

    try {
      altura = double.parse(inputAltura!);
      if (altura <= 0) {
        print('Altura deve ser maior que zero.');
        altura = null;
      }
    } catch (e) {
      print('Valor inválido para altura.');
    }
  }


  double imc = peso / (altura * altura);

  String classificacao;

  if (imc < 18.5) {
    classificacao = 'Abaixo do peso';
  } else if (imc < 24.9) {
    classificacao = 'Peso normal';
  } else if (imc < 29.9) {
    classificacao = 'Sobrepeso';
  } else if (imc < 34.9) {
    classificacao = 'Obesidade grau I';
  } else if (imc < 39.9) {
    classificacao = 'Obesidade grau II';
  } else {
    classificacao = 'Obesidade grau III (mórbida)';
  }

  print('Seu IMC é: ${imc.toStringAsFixed(2)}');
  print('Classificação: $classificacao');
}
