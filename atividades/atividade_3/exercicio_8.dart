// Transformação de Lista de Palavras em Lista de Comprimentos
// Dada uma lista de palavras, crie uma nova lista de inteiros onde cada inteiro representa o número de caracteres da palavra correspondente na lista original.


void main() {
  List<String> palavras = ["amor", "amizade", "sol", "aventura"];

  List<int> numeroLetras = [];

  for (var letras in palavras) {
    var numero = letras.length;
    numeroLetras.add(numero);
  }
  print(numeroLetras);

}