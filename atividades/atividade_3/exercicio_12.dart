// Cálculo de Estoque Total de Produtos Ativos
// Dada uma lista de Maps, onde cada Map representa um produto com
// as chaves "nome" (String), "estoque" (int) e "ativo" (bool),
// calcule a soma total do estoque de todos os produtos que estão
// com o status "ativo" igual a true.

import 'dart:io';

void main() {
  while (true) {
    List<String> lista_nomes = [];
    List<int> lista_estoque = [];
    List<bool> lista_ativos = [];

    int? qtd;
    while (qtd == null) {
      stdout.write('\nQuantos registros: ');
      String? entradaQtd = stdin.readLineSync();

      if (entradaQtd == null || entradaQtd.isEmpty) {
        print('Entrada inválida');
        continue;
      }

      qtd = int.tryParse(entradaQtd);
      if (qtd == null || qtd <= 0) {
        print('Quantidade inválida');
        qtd = null;
      }
    }

    for (int i = 0; i < qtd; i++) {

      String? nome;
      while (nome == null) {
        stdout.write('\n${i + 1}º Produto: ');
        String? entradaNome = stdin.readLineSync();

        if (entradaNome == null || entradaNome.trim().isEmpty) {
          print('Entrada inválida! Digite um nome válido.');
          continue;
        }

        nome = entradaNome.trim();
      }

      int? estoque;
      while (estoque == null) {
        stdout.write('Quantidade em estoque: ');
        String? entradaEstoque = stdin.readLineSync();

        if (entradaEstoque == null || entradaEstoque.isEmpty) {
          print('Entrada inválida! Digite um número inteiro.');
          continue;
        }

        estoque = int.tryParse(entradaEstoque);
        if (estoque == null || estoque < 0) {
          print('Número inválido! Digite um número inteiro.');
          estoque = null;
        }
      }

      bool? ativo;
      while(ativo == null) {
        stdout.write('O produto está ativo? (s/n): ');
        String? entradaAtivo = stdin.readLineSync();

        if (entradaAtivo == null || entradaAtivo.trim().isEmpty) {
          print('Entrada inválida');
          continue;
        }

        entradaAtivo = entradaAtivo.trim().toLowerCase();
        if (entradaAtivo == 's') {
          ativo = true;
        } else if (entradaAtivo == 'n') {
          ativo = false;
        } else {
          print('Entrada inválida');
        }
      }

      lista_nomes.add(nome);
      lista_estoque.add(estoque);
      lista_ativos.add(ativo);
    }

    int soma_ativos = 0;
    for (int i = 0; i < lista_nomes.length; i++) {
      if (lista_ativos[i]) {
        soma_ativos += lista_estoque[i];
      }
    }

    print('Produtos ativos:');
    for (int i = 0; i < lista_nomes.length; i++) {
      if (lista_ativos[i]) {
        print(' ° ${lista_nomes[i]}: ${lista_estoque[i]} unidades.');
      }
    }
    print('Soma total do estoque dos procutos ativos: $soma_ativos');

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