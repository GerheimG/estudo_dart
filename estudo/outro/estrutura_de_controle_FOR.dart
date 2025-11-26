import 'dart:io';

void main() {
  for (int i = 1; i <=5; i++) {
    print(i);//quebra a linha
  }

  for (int i = 1; i <= 5; i++) {
    stdout.write('$i '); // sem quebra de linha
  }
}
/**
 * Neste exemplo, a variavel i é inicializada
 * com o valor 1 antes do inicio do loop.
 * A condição de controle i <= 5 verifica se a 
 * variavel i é menor ou igual a 5. Enquanto
 * essa condição for verdadeira, o bloco de 
 * código dentro do loop será executado.
 * O incremeneto i++ é executado após cada iteração,
 * adicionando 1 à variável i. O resultado desse
 * código se´ra a impressão dos números de
 * 1 a 5 na saída padrão
 */

// VOLTAR NO SLIDE 24 TEM MAIS TIPOS DE FOR