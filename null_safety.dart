void main() {
  String? nome;

  String saudacao = "Olá";

  print('Exemplo 1: Variável nula');
  print(nome);

  print('\nExemplo 2: Atribuindo valor à variável nula:');
  nome = 'Maria';
  print(nome);

  print('\nExemplo 3: Acessando valor com !');
  String texto = nome!; // Usando o operador ! para 'tirar' o ? do tipo
  print('Texto com nome: $texto');

  print('\nExemplo 4: Tentando usar variável não inicializada');
  String? mensagem;

  // Agora vamos tentar forçar ela com !
  try {
    String novaMensagem = mensagem!; // Aqui vai dar erro!
    print(novaMensagem);
  } catch (e) {
    print('Erro: você tentou usa uma variável nula com !');
    print('Detalhes: $e');
  }
}