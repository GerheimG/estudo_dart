import 'dart:io';

void main() {
  var numeros = [1, 2, 3, 4, 5];
  var letras = ['a', 'b', 'c', 'd', 'e'];

  // ForEach
  numeros.forEach((numero) => print(numero));
  // (numero) : função anônima (mais à frente no curso)
  // => Arrow function: simboliza retorno do resulta seguinte

  // e: pode ser qualquer coisa
  letras.forEach((e) => stdout.write('$e '));
}