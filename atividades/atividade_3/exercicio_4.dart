// Multiplicação de Elementos Ímpares
// Percorra uma lista de números inteiros. Para cada número, verifique se ele é ímpar. Se for ímpar, ele deve ser multiplicado por 2.
// Se for par, ele deve permanecer inalterado. O resultado final deve ser uma nova lista com os valores transformados.

void main() {
  List<int> numeros = [5, 8, 3, 5, 10, 8, 12, 3, 15, 12, 20];

  // Cria uma nova lista para guardar o resultado
  List<int> resultado = [];


  for (var n in numeros) {
    if (n % 2 != 0) {
      resultado.add(n * 2);
    } else {
      resultado.add(n);
    }
  }

  print(resultado);
}
