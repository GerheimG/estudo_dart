// Mapeamento de Mapas para Strings Formatadas
// Dada a lista de Maps do exercício anterior (Produtos),
// crie uma nova lista de strings onde cada string é um 
//resumo formatado do produto, no formato: "Produto [Nome] - Estoque: [Estoque]".


import 'dart:io';

void main() {
  while (true) {
    List<String> nomes = [];
    List<int> lista_estoque = [];

    int? quantidade;
    while (quantidade == null) {
      stdout.write('\nQuantos registros: ');
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

      int? estoque;
      while (estoque == null) {
        stdout.write('Quantidade em estoque: ');
        String? entradaEstoque = stdin.readLineSync();

        if (entradaEstoque == null || entradaEstoque.isEmpty) {
          print('Entrada inválida');
          continue;
        }

        estoque = int.tryParse(entradaEstoque);
        if (estoque == null || estoque < 0) {
          print('Número inválido');
          estoque = null;
        }
      }

      nomes.add(nome);
      lista_estoque.add(estoque);
    }

    List<String> lista_resumo = [];

    for (int i = 0; i < nomes.length; i++) {
      String resumo =
          'Produto: ${nomes[i]} - Estoque: ${lista_estoque[i]}';
      lista_resumo.add(resumo);
    }

    print('Produtos:');
    for (var item in lista_resumo) {
      print(item);
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