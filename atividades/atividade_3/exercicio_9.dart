// Filtragem de Emails Válidos (Regra Simples)
// Dada uma lista de strings que supostamente são endereços de email, filtre e colete em uma nova lista apenas os emails que contêm exatamente um caractere '@' e terminam com ".com".



import 'dart:io';

void main() {

  while (true) {
    List<String> palavras = [];

    int? quantidade;
    while (quantidade == null) {
      stdout.write('Quantas palavras na lista? ');
      String? entradaQtd = stdin.readLineSync();

      if (entradaQtd == null || entradaQtd.isEmpty) {
        print('Entrada inválida.');
        continue;
      }

      quantidade = int.tryParse(entradaQtd);
      if (quantidade == null || quantidade <= 0) {
        print('Quantidade inválida.');
        quantidade = null;
      }
    }

    for (int i = 0; i < quantidade; i++) {
      String? palavra;
      while (palavra == null) {
        stdout.write('${i + 1}ª Palavra: ');
        String? entradaPalavra = stdin.readLineSync();

        if (entradaPalavra == null || entradaPalavra.trim().isEmpty) {
          print('Entrada inválida');
          continue;
        }

        palavra = entradaPalavra.trim();
      }

      palavras.add(palavra);
    }


    List<String> resultado = [];

    for (var arroba in palavras) {

      int contador = 0; // aqui eu verifico sem tem o @ no email
      for (var c in arroba.split('')) {
        if (c == '@') {
          contador++;
        }
      }
      if (contador == 1 && arroba.endsWith('.com')) { // caso tenha ela vai verificar sem termina com .com
        resultado.add(arroba);
      }
    }

    print(resultado); 

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
          print('Resposta inválida');
        }
      }
  }
}


