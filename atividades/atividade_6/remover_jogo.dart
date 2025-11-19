import 'dart:io';

void removerJogo(List<Map<String, dynamic>> jogos) {

      String? nomeBusca;
      while (nomeBusca == null) {

              stdout.write('Digite o nome do jogo que deseja remover (ou 0 para cancelar): ');
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

              var jogoEncontrado = jogos.any(
                (jogo) => (jogo['nome'] as String).toLowerCase() == nomeBusca!.toLowerCase()
              );

              if (!jogoEncontrado) {
                print('Jogo não encontrado. Tente novamente.\n');
                nomeBusca = null;
              } else {
                stdout.write('Tem certeza que deseja excluir esse jogo (s/n): ');
                String? resposta = stdin.readLineSync();

                if (resposta != null && resposta.toLowerCase() == 's') {
                  jogos.removeWhere(  
                    (jogo) => (jogo['nome'] as String).toLowerCase() == nomeBusca!.toLowerCase()
                  );
                  print('Jogo removido com sucesso.');
                  break;
                } else if (resposta != null && resposta.toLowerCase() == 'n') {
                  print('Operação cancelada. Voltando ao menu...');
                  break;
                } else {
                  print('Resposta inválida. Digite "s" para sim ou "n" para não.');
                }
              }
            }

}