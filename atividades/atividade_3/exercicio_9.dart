// Filtragem de Emails Válidos (Regra Simples)
// Dada uma lista de strings que supostamente são endereços de email, filtre e colete em uma nova lista apenas os emails que contêm exatamente um caractere '@' e terminam com ".com".

void main() {
  List<String> email = ["joao@gmail.com", "ana@yahoo.com", "pedro@mail", "luisa@gmail.com.br"];

  List<String> resultado = [];

  for (var arroba in email) {

    int contador = 0; // aqui eu verifico sem tem o @ no email
    for (var c in arroba.split('')) {
      if (c == '@') {
        contador++;
      }
    }
    if (contador == 1 && arroba.endsWith('.com')) { // caso tenha ela vai verificar sem termina com .com
      resultado.add(arroba);
    }
  }

  print(resultado); 
}
