// Encontrando o Item Mais Caro
// Dada uma lista de Maps, onde cada Map representa um item com as chaves "nome" (String) e "preco" (double), encontre e imprima o nome do item que possui o maior preço.


import 'dart:io';

void main() {
  while (true) {
    List<String> nomes = [];
    List<double> lista_precos = [];

    int? quantidade;
    while (quantidade == null) {
      stdout.write('Quantos registros: ');
      String? entradaQtd = stdin.readLineSync();

      if (entradaQtd == null || entradaQtd.isEmpty) {
        print('Entrada inválida');
        continue;
      }

      quantidade = int.tryParse(entradaQtd);
      if (quantidade == null || quantidade <= 0) {
        print('Quantidade inválida');
        quantidade = null;
      }
    }

    for (int i = 0; i < quantidade; i++) {

      String? nome;
      while (nome == null) {
        stdout.write('\n${i + 1}º Produto: ');
        String? entradaNome = stdin.readLineSync();

        if (entradaNome == null || entradaNome.trim().isEmpty) {
          print('Entrada inválida');
          continue;
        }

        nome = entradaNome.trim();
      }

      double? preco;
      while (preco == null) {
        stdout.write('${i + 1}º Número: ');
        String? entradaPreco = stdin.readLineSync();

        if (entradaPreco == null || entradaPreco.isEmpty) {
          print('Entrada inválida');
          continue;
        }

        preco = double.tryParse(entradaPreco);
        if (preco == null || preco <= 0) {
          print('Número inválido');
          preco = null;
        }
      }

      nomes.add(nome);
      lista_precos.add(preco);
    }

    if (lista_precos.isNotEmpty) {
      double maior_preco = lista_precos[0];
      String maior_nome = nomes[0];

      for (int i = 1; i < lista_precos.length; i++) {
        if (lista_precos[i] > maior_preco) {
          maior_preco = lista_precos[i];
          maior_nome = nomes[i];
        }
      }

      print('O item com o maior preço é: $maior_nome - R\$ ${maior_preco.toStringAsFixed(2)}.',);
    }

    while (true) {
      stdout.write('\nDeseja repetir? (s/n): ');
      String? resposta = stdin.readLineSync();

      if (resposta == null) continue;

      resposta = resposta.toLowerCase();
      if (resposta == 's') {
        print('-' * 80);
        break;
      } else if (resposta == 'n') {
        print('\nSistema encerrado.\n');
        return;
      } else {
        print('Resposta inválida.');
      }
    }
  }
}