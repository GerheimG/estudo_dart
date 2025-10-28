void main() {
  print('Exemplo de Where em Mapa');

  Map<String, int> pessoas = {
    'Alice': 20,
    'Bob': 17,
    'Carol': 25,
    'Eve': 30
  };

  Map<String , int> pessoasMaiores = 
    Map.fromEntries(pessoas.entries.where((element) => element.value > 18));


  // Saída esperada:
  print(pessoasMaiores);
}