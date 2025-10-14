import 'dart:io';


void main() {

  int? opcao;

  while (opcao == null) {
    print('1 - Triângulo');
    print('2 - Quadrado');
    print('3 - Retângulo');
    print('4 - Círculo');
    stdout.write('Escolha uma opção: ');
    String? inputA = stdin.readLineSync();

    try {
      opcao = int.parse(inputA!);
    } catch (e) {
      print('Valor inválido');
    }


      switch (inputA){
        case '1':
        stdout.write('Insira o valor da base: ');
        String? baseInput = stdin.readLineSync();
        int basee = int.parse(baseInput!);

        stdout.write('Insira o valor da altura: ');
        String? alturaInput = stdin.readLineSync();
        int altura = int.parse(alturaInput!);

        double area = (basee * altura) / 2;

        print('A área do triângulo de base $basee e altura $altura: $area');
        break;

        case '2':
        stdout.write('Insira o valor do lado: ');
        String? ladoInput = stdin.readLineSync();
        int lado = int.parse(ladoInput!);


        int area = lado * lado;

        print('A área do quadrado de lado $lado: $area');
        break;

        case '3':
        stdout.write('Insira o valor da base: ');
        String? baseInput = stdin.readLineSync();
        int basee = int.parse(baseInput!);

        stdout.write('Insira o valor da altura: ');
        String? alturaInput = stdin.readLineSync();
        int altura = int.parse(alturaInput!);

        int area = basee * altura;

        print('A área do triângulo de base $basee e altura $altura: $area');
        break;

        case '4':
        stdout.write('Insira o raio: ');
        String? raioInput = stdin.readLineSync();
        int raio = int.parse(raioInput!);

        double area = 3.14 * raio * raio;

        print('A área do circulo de raio $raio: $area');
        break;
      }
  }

}