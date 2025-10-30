//  Cálculo de Média Ponderada Após Descarte
// Considere uma lista de notas de alunos. O exercício exige que se descarte a menor nota da lista e, em seguida, calcule a 
//média aritmética das notas restantes. O resultado deve ser um número decimal (double).

import 'dart:io';

void main() {

  while (true) {
    List<double> numeros = [];
    int? quantidade;

    while (quantidade == null) {
      stdout.write('Quantas notas: ');
      String? entradaNota = stdin.readLineSync();

      if (entradaNota == null || entradaNota.isEmpty) {
        print('Valor inválido, digite um número válido');
        continue;
      }

      quantidade = int.tryParse(entradaNota);
      if (quantidade == null || quantidade < 0) {
        print('Quantidade inválida');
        quantidade = null;
      }
    }

    for (int i = 0; i < quantidade; i++) {
      double? numero;
      while (numero == null) {
        stdout.write('${i + 1}º Nota: ');
        String? entradaNota = stdin.readLineSync();

        if (entradaNota == null || entradaNota.isEmpty) {
          print('Entrada inválida');
          continue;
        }

        numero = double.tryParse(entradaNota);
        if (numero == null) {
          print('Número inválido');
        }
      }
      numeros.add(numero);
    }  
    print('Lista das notas: $numeros');
    numeros.sort();
    print('Notas ordenadas: $numeros');
    numeros.removeAt(0);
    print('Nota menor descartada: $numeros');
    var somaDosValores = numeros.reduce((a, b) => a + b);
    var media = somaDosValores / numeros.length;
    print('Soma das notas: $somaDosValores');
    print('Média das notas: ${media.toStringAsFixed(2)}');
    while (true) {
      stdout.write('Deseja continuar: (s/n)');
      String? resposta = stdin.readLineSync();

      if (resposta == null) continue;

      resposta = resposta.toLowerCase();
      if (resposta == 's') {
        break;
      } else if (resposta == 'n') {
        print('Fechando');
        return;
      } else {
        print('Opção inválida');
      }
    }
  }
}