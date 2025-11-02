// Seleção de Registros por Idade Mínima
// Dada uma lista de Maps, onde cada Map representa um usuário com as chaves "nome" (String) e "idade" (int), filtre e colete em uma nova lista apenas os Maps dos usuários que são maiores de 18 anos.

import 'dart:io';

void main() {
  while (true) {
    List<String> nomes = [];
    List<int> idades = [];

    int? quantidade;
    while (quantidade == null) {
      stdout.write('\nQuantos usuários? ');
      String? entradaQuantidade = stdin.readLineSync();

      if (entradaQuantidade == null || entradaQuantidade.isEmpty) {
        print('Entrada inválida');
        continue;
      }

      quantidade = int.tryParse(entradaQuantidade);
      if (quantidade == null || quantidade <= 0) {
        print('Quantidade inválida');
        quantidade = null;
      }
    }

    for (int i = 0; i < quantidade; i++) {
      print('Usuário ${i + 1}:');

      // Nome
      String? nome;
      while (nome == null || nome.isEmpty) {
        stdout.write('Nome: ');
        String? entradaNome = stdin.readLineSync();

        if (entradaNome == null || entradaNome.trim().isEmpty) {
          print('Nome inválido!');
          continue;
        }

        nome = entradaNome.trim();
      }

      int? idade;
      while (idade == null) {
        stdout.write('Idade: ');
        String? entradaIdade = stdin.readLineSync();

        if (entradaIdade == null || entradaIdade.isEmpty) {
          print('Entrada inválida');
          continue;
        }

        idade = int.tryParse(entradaIdade);
        if (idade == null || idade <= 0) {
          print('Idade inválida');
          idade = null;
        }
      }

      nomes.add(nome);
      idades.add(idade);
    }

    List<String> nomes_maiores = [];
    List<int> idades_maiores = [];

    for (int i = 0; i < nomes.length; i++) {
      if (idades[i] > 18) {
        nomes_maiores.add(nomes[i]);
        idades_maiores.add(idades[i]);
      }
    }

    print('maiores de 18 anos');
    for (int i = 0; i < nomes_maiores.length; i++) {
      print('Nome: ${nomes_maiores[i]} : Idade: ${idades_maiores[i]}');
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