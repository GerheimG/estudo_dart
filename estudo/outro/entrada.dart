import 'dart:io';

void main() {
  // stdin.readLineSync() retorna String? -> pode ser null se o usuário não digitar nada
  // Por isso a variável precisa ser do tipo String? para permitir null
  stdout.write('Insira seu nome: ');
  String? nome = stdin.readLineSync();

  // Null safety:
  // - Se nome for null ou vazio, usamos valor padrão 'Não Informado'
  // - O operador ?? poderia ser usado diretamente, mas aqui adicionamos
  // isEmpty para garantir que string vazia também seja tratada
  nome = (nome == null || nome.isEmpty) ? 'Não Informado' : nome;

  // ou nome = (nome ?? '').isEmpty ? 'Não informado' : nome;

  stdout.write('Insira sua idade: ');

  // Lemos a entrada como String? (pode ser null)
  String? inputIdade = stdin.readLineSync();

  // Null safety
  // - Verificamos se a entrada não é null e não está vazia
  // - int.tryParse() retorna int? (pode ser null se não for válido)
  int? idade = (inputIdade != null && inputIdade.isNotEmpty)
      ? int.tryParse(inputIdade)
      : null;
  
  // Se idade for nll, significa que a conversão falhou -> mensagem de erro
  if (idade == null) {
    print('Idade inválida! Digite um número válido.');
    return; // encerra o programa
  }

  // - nome já foi tratado: nunca será null aqui
  // - idade também é int não-nulo neste ponto
  print('');
  print('Seu nome é: $nome');
  print('Idade: $idade');
}