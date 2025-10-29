// Criação de Frase com Filtro
// Dada uma lista de strings, crie uma única string (frase) concatenando apenas as palavras que terminam com a letra 'R'
// (maiúscula ou minúscula). As palavras devem ser separadas por um espaço na frase final.

void main() {
  List<String> palavras = ["Correr", "andar", "sol", "Amar", "voar", "lua"];

  List<String> resultado = [];

  for (var p in palavras) {
    if (p[p.length -1] == 'r' || p[p.length -1] == 'R') {
      resultado.add(p);
    }
  }
  String frase = resultado.join(' ');

  print(frase);

}