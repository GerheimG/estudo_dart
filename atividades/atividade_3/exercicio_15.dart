// Contagem de Ocorrências de Status
// Dada uma lista de Maps, onde cada Map representa
// uma tarefa com a chave "status" (String), 
//conte e imprima o número total de tarefas para cada status distinto.

void main() {
  List<Map<String , String>> pedidos = [
    {'pedido': 'pizza', 'status': 'preparo'},
    {'pedido': 'pastel', 'status': 'pronto'},
    {'pedido': 'pizza', 'status': 'entregue'},
    {'pedido': 'pizza', 'status': 'pronto'},
    {'pedido': 'pizza', 'status': 'entregue'},
    {'pedido': 'pizza', 'status': 'preparo'},
    {'pedido': 'pizza', 'status': 'pronto'}
  ];

  num contadorPronto = 0;
  num contadorPreparo = 0;
  num contadorEntregue = 0;

  for (var n in pedidos) {
    if (n['status'] == 'preparo') {
      contadorPreparo++;
    } else if (n['status'] == 'pronto') {
      contadorPronto++;
    } else if (n['status'] == 'entregue') {
      contadorEntregue++;
    }
  }

  print('Contagem de pedidos em preparo: $contadorPreparo');
  print('Contagem de pedidos prontos: $contadorPronto');
  print('Contagem de pedidos entregues: $contadorEntregue');
}

