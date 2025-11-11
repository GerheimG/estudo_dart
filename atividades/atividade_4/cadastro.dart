import 'dart:io';
import 'formatar_nome.dart';


void cadastrar(List<Map<String, dynamic>> agenda) {
  String? nomeContato;
  String? telefoneContato;
  String? emailContato;
  while (nomeContato == null) {
              stdout.write('Insira o nome do contato: ');
              String? entradaNome = stdin.readLineSync();

              if (entradaNome != null && entradaNome.trim().isNotEmpty) {
                nomeContato = formatarNome(entradaNome);
              } else {
                print('Nome inválido.');
                continue;
              }

              print('Caso não queria informar algum digite "0"');

            while (emailContato == null) {
                  stdout.write('Insira o email: ');
                  String? entradaEmail = stdin.readLineSync();

                  if (entradaEmail == '0') {
                    print('Não informado');
                    emailContato = 'Não informado';
                    break;
                  }
                  if (entradaEmail == null || entradaEmail.isEmpty) {
                    print('Insira um email válido.');
                    continue;
                  }
                  if (entradaEmail.contains('@') && entradaEmail.endsWith('.com')) {
                    emailContato = entradaEmail.trim();
                  } else {
                    print('Email inválido');
                    continue;
                  }
                }
              
            while (telefoneContato == null) {
                  stdout.write('Insira o telefone (sem DDD) xxxxx-xxxx: ');
                  String? entradaTel = stdin.readLineSync();

                  if (entradaTel == '0') {
                    print('Não informado');
                    telefoneContato = 'Não informado';
                    break;
                  }
                  if (entradaTel == null || entradaTel.isEmpty) {
                    print('Entrada inválida');
                    continue;
                  }
                  if (entradaTel.length > 10 || entradaTel.length < 10) {
                    print('Insira um número de telefone válido');
                    continue;
                  }
                  if (entradaTel.contains('-')) {
                    telefoneContato = entradaTel.trim();
                  } else {
                    print('Telefone inválido. Insira "-" ');
                    continue;
                  }
                }
              agenda.add({
                'nome' : nomeContato,
                'email' : emailContato,
                'telefone' : telefoneContato
              });
    }
}