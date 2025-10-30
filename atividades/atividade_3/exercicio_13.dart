// Mapeamento de Mapas para Strings Formatadas
// Dada a lista de Maps do exercício anterior (Produtos),
// crie uma nova lista de strings onde cada string é um 
//resumo formatado do produto, no formato: "Produto [Nome] - Estoque: [Estoque]".


void main() {
  List<Map<String, dynamic>> produtos = [
    {'nome': 'banana', 'estoque': 12, 'ativo': false},
    {'nome': 'chocolate', 'estoque': 9, 'ativo': true},
    {'nome': 'coca', 'estoque': 32, 'ativo': false},
    {'nome': 'pepsi', 'estoque': 20, 'ativo': true},
    {'nome': 'água', 'estoque': 35, 'ativo': false},
    {'nome': 'sal', 'estoque': 40, 'ativo': true}
  ];

  List<String> resumo = [];

  for (var n in produtos) {
    resumo.add('Nome: ${n['nome']} - Estoque ${n['estoque']}\n');
  }

  print(resumo);
}