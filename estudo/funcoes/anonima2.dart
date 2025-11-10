void main() {
  // ======================
  // EXEMPLO BÁSICO
  // ======================
  print('-' * 70);
  print('EXEMPLO DE FUNÇÃO ANÔNIMA: BÁSICA');
  print('-' * 70);

  List<int> numeros = [1, 2, 3, 4, 5];

  // Em uma varredura forEach para retornar o dobro dos números
  numeros.forEach((numero) {
    print(numero * 2);
  });

  print(""); // Espaço entre exemplos

  // ======================
  // EXEMPLO INTERMEDIÁRIO
  // ======================
  print('-' * 70);
  print('EXEMPLO DE FUNÇÃO ANÔNIMA: INTERMEDIÁRIA');
  print('-' * 70);

  var lista = [1, 2, 3, 4, 5];

  // Utilizada com o método map()
  var novalista = lista.map((numero) => numero * 2).toList();

  print(novalista);

  print(""); // Espaço entre exemplos

  // ======================
  // EXEMPLO AVANÇADO
  // ======================
  print('-' * 70);
  print('EXEMPLO DE FUNÇÃO ANÔNIMA: AVANÇADA');
  print('-' * 70);

  var listaAvancada = [1, 2, 3, 4, 5];

  // .isOdd é uma propriedade fornecida pela classe int em Dart
  // que retorna true se o número for ímpar e false se for par.
  var novaListaAvancada = listaAvancada
      .where((numero) { return numero.isOdd; }) // Busca números ímpares
      .map((numero) => numero * 2) // Retorno com cálculo (dobro)
      .toList();

  print(novaListaAvancada);
}
