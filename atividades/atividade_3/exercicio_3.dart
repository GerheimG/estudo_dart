//  Cálculo de Média Ponderada Após Descarte
// Considere uma lista de notas de alunos. O exercício exige que se descarte a menor nota da lista e, em seguida, calcule a 
//média aritmética das notas restantes. O resultado deve ser um número decimal (double).

void main() {
  List<double> notas = [6, 9, 4, 8, 10, 7, 5, 9, 6, 8];

  print('Lista das notas: $notas');

  notas.sort();

  print('Notas ordenadas: $notas');

  notas.removeAt(0);

  print('Nota menor descartada: $notas');



  var somaDosValores = notas.reduce((a, b) => a + b);
  var media = somaDosValores / notas.length;

  print('Soma das notas: $somaDosValores');
  print('Média das notas: ${media.toStringAsFixed(2)}');
  
}