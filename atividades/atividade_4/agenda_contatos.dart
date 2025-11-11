// Projeto 4 – Agenda de Contatos Inteligente(Fidelas)
// O quarto e último projeto integra todos os conceitos estudados em uma aplicação mais completa:
// uma agenda de contatos inteligente. O sistema deve utilizar uma lista de mapas (List<Map<String, String?>>) 
//para armazenar os contatos, sendo que cada mapa deve conter as chaves ‘nome’, ‘telefone’ e ‘email’. O programa 
//deve disponibilizar um menu interativo que permita cadastrar, listar, buscar, atualizar e remover contatos. 
//Durante o cadastro, o nome é obrigatório e deve ser validado para evitar valores nulos ou vazios; os demais 
//campos, caso não sejam informados, devem receber o valor “Não informado”. O nome deve ser formatado para exibir a
// primeira letra maiúscula, utilizando métodos de manipulação de strings. Todas as operações — como buscas, 
//atualizações e listagens — devem ocorrer por meio do acesso direto às chaves do Map, manipulando os dados 
//internamente com expressões como contato['email'] ou contato['telefone']. O programa deve empregar o método .
//where() para filtrar contatos por nome, ignorando diferenças entre maiúsculas e minúsculas. O uso de operadores 
//de null safety deve garantir a estabilidade da aplicação e evitar exceções. Como desafio adicional, o aluno poderá 
//desenvolver uma função que conte quantos contatos possuem e-mail cadastrado ou até salvar os dados em um arquivo de 
//texto, consolidando o domínio da estrutura Map aplicada em um contexto realista.

import 'dart:io';
import 'menu.dart';
import 'listar_contatos.dart';
import 'formatar_nome.dart';


void main() {

  List<Map<String, dynamic>> agenda = [];

  while (true) {
    int? opcao = mostrarMenu();
        switch (opcao) {
          case 1:
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
            break;
          case 2:
              listarContatos(agenda);
              print('----------------------');
            break;
          case 3:
            String? nomeBusca;
            while (nomeBusca == null) {
              listarContatos(agenda);
              stdout.write('Digite o nome do usuário que deseja buscar: ');
              String? entradaBusca = stdin.readLineSync();

              if (entradaBusca == null || entradaBusca.trim().isEmpty) {
                print('Entrada inválida');
                continue;
              }

              nomeBusca = entradaBusca.trim();

              List<Map<String, dynamic>> filtro = agenda.where(
                (contato) => contato['nome'].toLowerCase().contains(nomeBusca!.toLowerCase())
              ).toList();
              print('Resultado da Busca');
              for (var n in filtro) {
                print('Nome: ${n['nome']} | Email: ${n['email']} | Telefone: ${n['telefone']}');
              }
            }
            break;
          case 4:
            listarContatos(agenda);
            print('----------------------');

            String? nomeBusca;
            while (nomeBusca == null) {
              stdout.write('Digite o nome do usuário que deseja buscar: ');
              String? entradaBusca = stdin.readLineSync();

              if (entradaBusca == null || entradaBusca.trim().isEmpty) {
                print('Entrada inválida');
                continue;
              }

              nomeBusca = entradaBusca.trim();

              var contato = agenda.firstWhere(
                (contato) => (contato['nome'] ?? '').toLowerCase() == nomeBusca!.toLowerCase(),
                  orElse: () => {}
                  );
                
              if (contato.isEmpty) {
                print('Contato não encontrado.');
                nomeBusca = null;
              }

              String? campoUpdate;
              while (campoUpdate == null) {
                stdout.write('Qual campo deseja alterar (NOME | EMAIL | TELEFONE): ');
                String? entradaUp = stdin.readLineSync();
                if (entradaUp == null || entradaUp.trim().isEmpty) {
                  print('Entrada inválida');
                  campoUpdate = null;
                }

                campoUpdate = entradaUp!.trim().toLowerCase();

                if (campoUpdate == 'nome') {
                  stdout.write('Digite o novo nome: ');
                  String? novoNome = stdin.readLineSync()?.trim();
                  if (novoNome == null || novoNome.isEmpty) {
                    print('Nome inválido. Atualização cancelada.');
                    break;
                  }

                  novoNome = formatarNome(novoNome);

                  contato['nome'] = novoNome;
                  print('Nome atualizado com sucesso para: ${contato['nome']}');
                  break;
                } else if (campoUpdate == 'email') {
                  stdout.write('Digite o novo email: ');
                  String? novoEmail = stdin.readLineSync()?.trim();

                  if (novoEmail == null || novoEmail.isEmpty) {
                    print('Email inválido. Atualização cancelada.');
                    break;
                  }
                  if (novoEmail.contains('@') && novoEmail.endsWith('.com')) {
                    novoEmail = novoEmail.trim();
                  } else {
                    print('Email inválido. Atualização cancelada.');
                    continue;
                  }

                  contato['email'] = novoEmail;
                  print('Email atualizado com sucesso para: ${contato['email']}');
                  break;
                }
              }
            }
            break;
          case 5:
            if (agenda.isEmpty) {
              print('A agenda está vazia. Nenhum contato para remover.');
              break;
            }

            String? nomeBusca;
            while (nomeBusca == null) {
              listarContatos(agenda);
              print('----------------------');

              stdout.write('Digite o nome do usuário que deseja remover (ou 0 para cancelar): ');
              String? entradaBusca = stdin.readLineSync();

              if (entradaBusca == null || entradaBusca.trim().isEmpty) {
                print('Entrada inválida.');
                continue;
              }
              if (entradaBusca.trim() == '0') {
                print('Operação cancelada.');
                break;
              }

              nomeBusca = entradaBusca.trim();

              var contatoEncontrado = agenda.any(
                (contato) => (contato['nome'] as String).toLowerCase() == nomeBusca!.toLowerCase()
              );

              if (!contatoEncontrado) {
                print('Contato não encontrado. Tente novamente.\n');
                nomeBusca = null;
              } else {
                stdout.write('Tem certeza que deseja excluir esse contato (s/n): ');
                String? resposta = stdin.readLineSync();

                if (resposta != null && resposta.toLowerCase() == 's') {
                  agenda.removeWhere(  
                    (contato) => (contato['nome'] as String).toLowerCase() == nomeBusca!.toLowerCase()
                  );
                  print('Contato removido com sucesso.');
                  break;
                } else if (resposta != null && resposta.toLowerCase() == 'n') {
                  print('Operação cancelada. Voltando ao menu...');
                  break;
                } else {
                  print('Resposta inválida. Digite "s" para sim ou "n" para não.');
                }
              }
            }
            break;
          case 0:
            print('Saindo do programa...');
            exit(0);
          }
        }
      }