// Seleção de Registros por Idade Mínima
// Dada uma lista de Maps, onde cada Map representa um usuário com as chaves "nome" (String) e "idade" (int), filtre e colete em uma nova lista apenas os Maps dos usuários que são maiores de 18 anos.

void main() {
  Map<String, dynamic> pessoas = {
    'John' : {'idade': 12},
    'Jane' : {'idade': 27},
    'Daniela' : {'idade': 28},
    'Guilherme' : {'idade': 20},
    'Joel' : {'idade': 17},
  };

  Map<String, dynamic> resultado = {};

  for (var entries in pessoas.entries) {
    if (entries.value['idade'] > 18) {
      resultado[entries.key] = entries.value;
    }
  }
  print(resultado);

}