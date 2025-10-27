void main() {
  List<String> listaAlunas = [
    'Cynthia',
    'Ivone',
    'Izabelly',
    'Priscila'
  ];

  // for in
  print('Lista de Alunas');

  int i = 1;

  for (var aluna in listaAlunas) {
    print('Aluna ${i++}: $aluna');
  }
  // Podemos usar fatiament com na linguagem python
  print('${listaAlunas[0]}, também conhecida como ${listaAlunas[3]}');
  print('${listaAlunas[3]}, também conhecida como ${listaAlunas[0]}');
}