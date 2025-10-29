// Encontrando o Item Mais Caro
// Dada uma lista de Maps, onde cada Map representa um item com as chaves "nome" (String) e "preco" (double), encontre e imprima o nome do item que possui o maior preço.


void main() {
  Map<String, dynamic> produtos = {
    'Caneta': {'preco': 2.5},
    'Caderno': {'preco': 15.0},
    'Mochila': {'preco': 120.0},
    'Estojo': {'preco': 20.0},
  };

  String produtoMaisCaro = '';
  double maiorPreco = 0;

  for (var entry in produtos.entries) {
    if (entry.value['preco'] > maiorPreco) {
      maiorPreco = entry.value['preco'];
      produtoMaisCaro = entry.key;
    }
  }

  print("O produto mais caro é: $produtoMaisCaro, que custa \$${maiorPreco}");
}
