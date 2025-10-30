// Cálculo de Estoque Total de Produtos Ativos
// Dada uma lista de Maps, onde cada Map representa um produto com
// as chaves "nome" (String), "estoque" (int) e "ativo" (bool),
// calcule a soma total do estoque de todos os produtos que estão
// com o status "ativo" igual a true.

void main() {
  List<Map<String, dynamic>> produtos = [
    {'nome': 'banana', 'estoque': 12, 'ativo': false},
    {'nome': 'chocolate', 'estoque': 9, 'ativo': true},
    {'nome': 'coca', 'estoque': 32, 'ativo': false},
    {'nome': 'pepsi', 'estoque': 20, 'ativo': true},
    {'nome': 'água', 'estoque': 35, 'ativo': false},
    {'nome': 'sal', 'estoque': 40, 'ativo': true}
  ];

  num contador = 0;


  for (var n in produtos) {
    if (n['ativo'] == true)
      contador  = contador + n['estoque'];
  }
  print('Existem $contador produtos ativos');
}
