// Criação de Frase com Filtro
// Dada uma lista de strings, crie uma única string (frase) concatenando apenas as palavras que terminam com a letra 'R'
// (maiúscula ou minúscula). As palavras devem ser separadas por um espaço na frase final.
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

    for (var p in palavras) {
      if (p[p.length -1].toLowerCase() == 'r') {
        resultado.add(p);
      }
    }
    String frase = resultado.join(' ');

    print(frase);

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
