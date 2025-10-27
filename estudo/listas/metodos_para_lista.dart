void main() {
  print('Lista de Métodos para Listas');
  //add: adiciona um elemento ao final da lista
  List<int> listaInteiros = [1, 2, 3];
  print('Lista Original: $listaInteiros');
  listaInteiros.add(4);
  print('Lista nova: $listaInteiros');

  //addAll: adiciona vários elementos ao final da lista.
  List<String> listaFrutas = ['banana', 'maçã', 'pêra'];
  print('Lista original: $listaFrutas');
  listaFrutas.addAll(['uva', 'goiaba', 'manga']);
  print('Lista nova: $listaFrutas');

  //remove: remove um elemento específico da lista
  List<String> listaNomes = ['João', 'Maria', 'José'];
  print('Lista original: $listaNomes');
  listaNomes.remove('João');
  print('Lista nova: $listaNomes');

  //removeAt: remove um elemento pelo índice
  List<double> listaDouble = [1.1, 2.2, 3.3];
  print('Lista original: $listaDouble');
  listaDouble.removeAt(1);
  print('Lista nova: $listaDouble');

  // insert: insere um elemento em um índice específico
  List<String> listaArtista = ['Fernanda Torres', 'Paulo José', 'Raul Cortez'];
  print('Lista original: $listaArtista');
  listaArtista.insert(2, 'Grande Otelo');
  print('Lista nova: $listaArtista');

  // insertAll: insere vários elementos em um índice específico
  List<int> listaNumeros = [1, 2, 3];
  print('Lista original: $listaNumeros');
  listaDouble.insertAll(0, [1, 2]);
  print('Lista nova: $listaNumeros');

  // indexOf: retorna o índice do primeiro elemento encontrado na lista
  List<String> listaVogais = ['a', 'e', 'i', 'o', 'a', 'e', 'i', 'o', 'u'];
  print(listaVogais);
  print(' 1º ocorrência da vogail i: índice ${listaVogais.indexOf('i')}');

  // lastIndexOf: retorna o índice do último elemento encontrado na lista  
  List<String> listaCarros = ['Fusca', 'Gol', 'Ferrari', 'Gol'];
  print(listaCarros);
  print(' 1º ocorrência do Gol: índice ${listaCarros.lastIndexOf('Gol')}');

  // sublist: retorna uma sublista a partir de um índice 
  // inicial e um final (opcional). Final -1
  List<int> lista = [1, 2, 3, 4, 5];
  print('Lista original: $lista');
  print('Sublista gerada: ${lista.sublist(1, 3)}');

  // sort: ordena os elementos da lista
  List<String> listaVogais2 = ['e', 'a', 'u', 'i', 'o'];
  print('Lista original: $listaVogais2');
  listaVogais2.sort();
  print('Lista nova: $listaVogais2');

  //revesed: retorna uma nova lista com os elementos em ordem reversa
  List<int> listaNumeros2 = [1, 2, 3, 4, 5, 6];
  print('Lista original: $listaNumeros2');
  var listaReversa = listaNumeros2.reversed.toList();
  print('Lista reversa: $listaReversa');

  // shuffle: embaralha os elementos da lista
  List<String> listaVerduras = ['Couve', 'Serraia', 'Alface', 'Rúcula'];
  print('Lista original: $listaVerduras');
  listaVerduras.shuffle();
  print('Lista embaralhada: $listaVerduras');





}