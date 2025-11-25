void listarJogos(List<Map<String, dynamic>> jogos, {String? desenvolvedora, String? ano}) {
  if (jogos.isEmpty) {
    print('-' * 50);
    print('Não há jogos cadastrados.');
    print('-' * 50);
    return;
  }

  print('------ Lista de Jogos ------');
  print(' ');

  // Percorre a lista e aplica os filtros opcionais
  for (var jogo in jogos) {
    if ((desenvolvedora == null || jogo['desenvolvedora'] == desenvolvedora) &&
        (ano == null || jogo['data'] == ano)) {
      print('Nome: ${jogo['nome']} | Desenvolvedora: ${jogo['desenvolvedora']} | Ano: ${jogo['data']}');
    }
  }
}
