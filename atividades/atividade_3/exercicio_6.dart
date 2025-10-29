// Filtragem Dupla em Lista de Palavras
// Dada uma lista de palavras (strings), filtre e colete em uma nova lista apenas as palavras que
// satisfazem duas condições simultâneas: 1) o comprimento da palavra deve ser maior que 5 caracteres; 2) 
// a palavra deve começar com a letra 'A' (maiúscula ou minúscula).

void main() {
  List<String> palavras = ["Amor", "amizade", "Aventura", "análise", "sol", "Alface"];

  List<String> resultado = [];


  for (var n in palavras) {
    if (n.length > 5 && (n[0] == 'A' || n[0] == 'a')) {
      resultado.add(n);
    }
  }
  print(resultado);
}