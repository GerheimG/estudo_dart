//  Identificação e Contagem de Ocorrências Distintas
// Dada uma lista de inteiros que contém valores duplicados, o desafio é determinar quantos valores únicos existem na lista. 
//A solução deve percorrer a lista e construir uma nova coleção (ou usar um Set temporário, se permitido, ou uma lista auxiliar) 
//para armazenar apenas os elementos que ainda não foram vistos, reportando o total de elementos únicos ao final.

void main() {
  List<int> numeros = [5, 8, 3, 5, 10, 8, 12, 3, 15, 12, 20];

  print('Lista original: $numeros');

  List<int> unicos = [];

  for (int n in numeros) {

    if (!unicos.contains(n)) {
      unicos.add(n);
    }
  }

  print('Números únicos: $unicos');

  int totalUnicos = unicos.length;

  print('Quantidade de valores distintos: $totalUnicos');
}
