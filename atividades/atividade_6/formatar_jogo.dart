String formatarNome(String nome) {
  nome = nome.trim();
  if (nome.isEmpty) return nome;

  return nome[0].toUpperCase() + nome.substring(1).toLowerCase();
}
