import 'dart:io';

void main() {
  // Variável de controle do laço
  int i = 1;

  // Estrutura de repetição while
  // enquanto a condição (i <= 5) for verdadeira,
  // o bloco de código será executado.

  while (i <= 5) {
    // stdout.write imprime na mesma linha 
    stdout.write('$i ');

    // IMPORTANTE:
    // SE NÃO INCREMENTARMOS A VARIAVEL 'i',
    //  A CONDIÇÃO NUNCA MUDARÁ E O LOOP SE TORNARÁ INFINITO
    i++;
  }
}