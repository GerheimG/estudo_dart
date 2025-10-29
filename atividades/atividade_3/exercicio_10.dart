// Reversão Manual da Ordem dos Elementos
// Dada uma lista de strings, crie uma nova lista que contenha os mesmos elementos, mas na ordem inversa da lista original. O uso de List.reversed é permitido para fins de comparação, mas a implementação principal deve usar uma estrutura de repetição (for ou while).

void main() {
  List<String> palavras = ["amor", "amizade", "sol", "aventura"];

  List<String> resultado = [];

  int indice = palavras.length - 1;


  while (indice >= 0) {
    resultado.add(palavras[indice]);
    indice--; 
  }

  print(resultado);
}
