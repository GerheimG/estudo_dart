//  Interseção de Duas Listas
// Dadas duas listas de inteiros, crie uma nova lista contendo
// apenas os elementos que estão presentes em ambas as listas (a interseção).

void main() {
  List<int> lista1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List<int> lista2 = [2, 4, 6, 8, 10, 11, 12, 13];

  List<int> resultado = [];

  for (var n in lista1) {
    for (var m in lista2) {
      if (n == m) {
        resultado.add(n);
      }
    }
  }
  print(resultado);
}

