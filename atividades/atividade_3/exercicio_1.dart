// Filtragem e Soma Condicional de Pares Dada uma lista de números inteiros, o objetivo é primeiro filtrar apenas os números que são pares e, simultaneamente, 
//maiores que 10. Após a filtragem, deve-se calcular a soma total desses números restantes

void main() {
  
  List<int> numeros = [3, 8, 12, 15, 20, 7, 14];

  print('Lista original: $numeros');

  List<int> numerosPares = numeros.where((num) => num % 2 == 0 && num > 10).toList();

  print('Lista nova: $numerosPares');
  
  var soma = numerosPares.reduce((a, b) => a + b);

  print('Valor dos pares somados: $soma');
}