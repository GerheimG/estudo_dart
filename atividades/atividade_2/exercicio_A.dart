import 'dart:io';

void main() {
  bool repetir = true;

  while (repetir) {
    int? a;
    int? b;

    // Entrada de a
    while (a == null) {
      stdout.write('Insira o início: ');
      String? valor = stdin.readLineSync();

      try {
        a = int.parse(valor!);
      } catch (e) {
        print('Valor inválido');
      }
    }

    // Entrada de b
    while (b == null) {
      stdout.write('Insira o final: ');
      String? valor2 = stdin.readLineSync();

      try {
        b = int.parse(valor2!);
        if (b < a) {
          print('O valor do final precisa ser maior que o inicial');
          b = null;
        }
      } catch (e) {
        print('Valor inválido');
      }
    }

    // Impressão dos números primos
    print('\nNúmeros primos entre $a e $b:');
    for (int nume = a; nume <= b; nume++) {
      if (nume <= 1) continue;

      bool primo = true;
      for (int divisor = 2; divisor * divisor <= nume; divisor++) {
        if (nume % divisor == 0) {
          primo = false;
          break;
        }
      }

      if (primo) {
        print(nume);
      }
    }

    // Perguntar se deseja repetir
    stdout.write('\nDeseja repetir? (s/n): ');
    String? resposta = stdin.readLineSync();
    if (resposta == null || resposta.toLowerCase() != 's') {
      repetir = false;
    } 

  }
} 
