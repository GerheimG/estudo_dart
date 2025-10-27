void main() {
  print('Exemplo de uso do Where()');

  // declaração da lista
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  //.toList() transforma a busca em uma lista separada
  List<int> numerosPares = numeros.where((num) => num % 2 == 0).toList();

  // Saída
  print('Nova lista: ${numerosPares}');
}