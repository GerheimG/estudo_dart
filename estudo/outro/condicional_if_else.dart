import 'dart:io';

void main() {
  // Declarações de variáveis inteiras
  stdout.write('Entre com o valor de A:');
  var a = double.parse(stdin.readLineSync()!);

  stdout.write('Entre com o valor de B:');
  var b = double.parse(stdin.readLineSync()!);

  print('Testando se "a" é maior que "b"');
  if (a > b) {
    print('Informação verdadeira!');
  } else {
    print('Informação falsa!');
  }

  print('Testando se "john" é diferante de "jane"');
  String nome = "john";

  if (nome != 'jane') {
    print('Os nomes são diferentes!');
  } else {
    print('Os nomes são iguais!');
  }

  double media = 4;
  print('Testando uma Média declarada ( ${media})');

  if (media < 0 || media > 10) {
    print('Média inválida! Digite um valor entre 0 e 10.');
  } else if (media >=7.5) {
    print('Aluno foi aprovado!');
  } else if (media >= 5) {
    print('O aluno está de recuperação!');
  } else {
    print('O aluno foi reprovado!');
  }
}

