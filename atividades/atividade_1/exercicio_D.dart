import 'dart:io';

void main() {
  List<double> notas = [];

  for (int i = 1; i <= 4; i++) {
    while (true) {
      stdout.write('Insira a $i° nota: ');
      String? valor = stdin.readLineSync();

      try {
        if (valor != null) {
          double nota = double.parse(valor);
          notas.add(nota);
          break;
        } else {
          print('Entrada vazia, tente novamente.');
        }
      } catch (e) {
        print('Valor inválido, tente novamente.');
      }
    }
  }

  double soma = notas.reduce((a, b) => a + b);
  double media = soma / notas.length;

  print('Sua média: $media');
}
