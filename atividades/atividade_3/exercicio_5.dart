// Determinação do Segundo Valor de Pico
// Dada uma lista de números inteiros, encontre e imprima o segundo maior valor presente na lista.
// A lista pode conter duplicatas, mas o segundo maior valor deve ser o valor distinto que é 
//imediatamente menor que o maior valor.

void main() {
  List<int> numeros = [5, 8, 3, 10, 8, 12, 3, 15, 12, 20];


  List<int> distintos = numeros.toSet().toList();

  distintos.sort();

  int segundoMaior = distintos[distintos.length - 2];

  print('O segundo maior valor é: $segundoMaior');
}

