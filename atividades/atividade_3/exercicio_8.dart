// Transformação de Lista de Palavras em Lista de Comprimentos
// Dada uma lista de palavras, crie uma nova lista de inteiros onde cada inteiro representa o número de caracteres da palavra correspondente na lista original.



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

    List<int> numeroLetras = [];

    for (var letras in palavras) {
      var numero = letras.length;
      numeroLetras.add(numero);
    }
    print(numeroLetras);

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


