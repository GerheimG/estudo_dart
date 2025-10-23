// Classificação de ângulos: Faça um programa que receba um ângulo em graus e classifique-o como agudo (<90°), reto (90°), obtuso (>90° e <180°) ou rente (180°).


import 'dart:io';


void main() {
  
  bool pergunta = true;

  while (pergunta) {
    int? a;

    while (a == null) {

      stdout.write('Insira um ângulo: ');
      String? valor = stdin.readLineSync();

      try {
        a = int.parse(valor!);
      } catch (e) {
        print('Valor inválido!');
        break;
      }
      
      if (a < 90) {
        print('O ângulo $a é: Agudo.');
      } else if (a == 90) {
        print('O ângulo $a é: Reto.');
      } else if (a > 90 && a < 180) {
        print('O ângulo $a é: Obtuso.');
      } else if (a == 180) {
        print('O ângulo $a é: Rente.');
      }
    }


    
    stdout.write('Deseja continuar: (s/n): ');
    String? resposta = stdin.readLineSync();
    if (resposta == null || resposta.toLowerCase() != 's') {
      pergunta = false;
    }
  }
}