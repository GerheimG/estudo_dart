// Filtragem e Soma Condicional de Pares Dada uma lista de números inteiros, o objetivo é primeiro filtrar apenas os números que são pares e, simultaneamente, 
//maiores que 10. Após a filtragem, deve-se calcular a soma total desses números restantes

import 'dart:io';

void main() {
  
  while (true) {
    List<int> numeros = [];
    int? quantidade;

    while (quantidade == null) {
      stdout.write('Quantos números: ');
      String? entradaNum = stdin.readLineSync();

      if (entradaNum == null || entradaNum.isEmpty) {
        print('Entrada inválida; Digite um número válido');
        continue;
      }

      quantidade = int.tryParse(entradaNum);
      if (quantidade == null || quantidade < 0) {
        print('Quantidade inválida.');
        quantidade = null;
      }
    }

    for (int i = 0 ; i < quantidade; i++) {
      int? numero;
      while (numero == null) {
        stdout.write('${i + 1}º Número: ');
        String? entradaNumero = stdin.readLineSync();

        if (entradaNumero == null || entradaNumero.isEmpty) {
          print('Insira um entrada válida');
          continue;
        }

        numero = int.tryParse(entradaNumero);
        if (numero == null) {
          print('Número inválido');
        }
      }
      numeros.add(numero);
    }
    print('Lista original: $numeros');
    List<int> numerosPares = numeros.where((num) => num % 2 == 0 && num > 10).toList();
    if (numerosPares.isEmpty) {
      print('Nenhum número par maior que 10 encontrado.');
      } else {
        var soma = numerosPares.reduce((a, b) => a + b);
        print('Valor dos pares somados: $soma');
      }

  
    while (true) {
      stdout.write('Deseja repetir: (s/n)');
      String? resposta = stdin.readLineSync();

      if (resposta == null) continue;

      resposta = resposta.toLowerCase();
      if (resposta == 's') {
        break;
      } else if (resposta == 'n') {
        print('Fechando');
        return;
      } else {
        print('Resposta inválida');
      }
    }
  }

}