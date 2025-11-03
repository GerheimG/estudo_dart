void main() {
  Map<String, Map<String, dynamic>> atrizes = {
    'Gal Gadot': {'nascimento': '30/04/1985', 'altura': 1.78},
    'Scarlett Johansson': {'nascimento': '22/11/1984', 'altura': 1.60},
    'Margot Robbie': {'nascimento': '02/07/1990', 'altura': 1.68},
    'Zendaya': {'nascimento': '01/09/1996', 'altura': 1.78},
    'Ana de Armas': {'nascimento': '30/04/1988', 'altura': 1.68},
  };

  print('-' * 70);
  print('ATRIZES MAIS BELAS DE HOLLYWOOD (com Map aninhado)');
  print('-' * 70);

  atrizes.forEach((nome, dados) {
    print(
      '$nome - Nascimento: ${dados['nascimento']}, Altura: ${dados['altura']}m',
    );
  });

  print('-' * 70);
}