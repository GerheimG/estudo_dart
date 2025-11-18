var ordenarJogosPorNome = (List<Map<String, dynamic>> lista) {
  lista.sort((a, b) => a['nome'].compareTo(b['nome']));
};