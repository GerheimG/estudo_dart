// Reversão Manual da Ordem dos Elementos
// Dada uma lista de strings, crie uma nova lista que contenha os mesmos elementos, mas na ordem inversa da lista original. O uso de List.reversed é permitido para fins de comparação, mas a implementação principal deve usar uma estrutura de repetição (for ou while).



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

    int indice = palavras.length - 1;


    while (indice >= 0) {
      resultado.add(palavras[indice]);
      indice--; 
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





