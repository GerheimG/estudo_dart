// Filtragem Dupla em Lista de Palavras
// Dada uma lista de palavras (strings), filtre e colete em uma nova lista apenas as palavras que
// satisfazem duas condições simultâneas: 1) o comprimento da palavra deve ser maior que 5 caracteres; 2) 
// a palavra deve começar com a letra 'A' (maiúscula ou minúscula).

import 'dart:io';

void main() {
  while (true) {
    List<String> palavras = [];

    int? qtd;
    while (qtd == null) {
      stdout.write('Quantas palavras na lista? ');
      String? entradaQtd = stdin.readLineSync();

      if (entradaQtd == null || entradaQtd.isEmpty) {
        print('Entrada inválida.');
        continue;
      }

      qtd = int.tryParse(entradaQtd);
      if (qtd == null || qtd <= 0) {
        print('Quantidade inválida.');
        qtd = null;
      }
    }

    for (int i = 0; i < qtd; i++) {
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

      for (var n in palavras) {
        if (n.length > 5 && (n[0] == 'A' || n[0] == 'a')) {
          resultado.add(n);
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
