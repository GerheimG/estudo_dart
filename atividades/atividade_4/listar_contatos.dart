void listarContatos(List<Map<String, dynamic>> agenda) {
  if (agenda.isEmpty) {
    print('A agenda está vazia.');
    return;
  }
  print('\n Contatos na agenda:');
  print('----------------------');
  for (int i = 0; i < agenda.length; i++) {
    var contato = agenda[i];
    print('${i + 1}. Nome: ${contato['nome']} | Email: ${contato['email']} | Telefone: ${contato['telefone']}');
  }
}