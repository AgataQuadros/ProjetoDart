import 'dart:io';

void main() {
  List<Map<String, dynamic>> tarefas = [];
  int proximoId = 1;
  while (true) {
    print(" ");
    print("~°" * 60);
    print(" ");
    print(".°" * 30);
    print("-=-=-=-=-=- MENU -=-=-=-=-=-");
    print("  1 - Visualizar Tarefas");
    print("  2 - Adicionar Nova Tarefa");
    print("  3 - Aualizar Status");
    print("  4 - Exclui Tarefa");
    print(".°" * 30);

    stdout.write("Entre com a opção de acordo com o menu: ");
    // úsuario escolhe uma das opções de ação para inicias o sistema
    String? entrada = stdin.readLineSync();
    int? opcao = int.tryParse(entrada ?? '');
    if (opcao == null || opcao <= 0) {
      print("Entrada invalida! Digite Algo!");
      continue;
    } else if (opcao > 4) {
      print("Entrada invalida! Digite um Número Dentro das Opções!");
      continue;
    }

    if (opcao == 1) {
      // visualizar tarefas

      if (tarefas.isEmpty) {
        print("Não á tarefas para visualizar! adicione algo!");
        return;
      }
      for (int i = 0; i < tarefas.length; i++) {
        var t = tarefas[i];
        print("${i + 1}. ${t['titulo']} - ${t['concluida']}");
      }
    } else if (opcao == 2) {
      // adicionar nova tarefa

      stdout.write("Entre com a tarefa: ");
      // úsuario entra com a tarefa em si
      String? tarefa = stdin.readLineSync();
      if (tarefa == null || tarefa.trim().isEmpty) {
        print("Entrada invalida! Digite Algo!");
        continue;
      }

      stdout.write("Entre com a descrição: ");
      // úsuario entra com a tarefa em si
      String? descricao = stdin.readLineSync();
      if (descricao == null || descricao.trim().isEmpty) {
        print("Entrada invalida! Digite Algo!");
        continue;
      }

      print(".°" * 30);
      print("-=-=-=-=-=- STATUS -=-=-=-=-=-");
      print("  1 - Ativa");
      print("  2 - Em Andamento");
      print("  3 - Finalizada");
      print(".°" * 30);

      stdout.write("Entre com o status da tarefa: ");
      String? entradaStatus = stdin.readLineSync();
      // o úsuario adiciona um status, no terminal vai aparecer a palavra
      int? status = int.tryParse(entradaStatus ?? '');
      if (status == null || status <= 0) {
        print("Entrada invalida! Digite Algo!");
        continue;
      } else if (status > 3) {
        print("Entrada invalida! Digite um Número Dentro das Opções!");
        continue;
      }

      tarefas.add({
        "id": proximoId,
        "titulo": tarefa,
        "descricao": descricao,
        "status": status,
      });
    } else if (opcao == 3) {
      // atualizar status

      print(".°" * 30);
      print("-=-=-=-=-=- STATUS -=-=-=-=-=-");
      print("  1 - Ativa");
      print("  2 - Em Andamento");
      print("  3 - Finalizada");
      print(".°" * 30);

      stdout.write("Entre com o status da tarefa: ");
      String? atualizaStatus = stdin.readLineSync();
      // o úsuario adiciona um status, no terminal vai aparecer a palavra
      int? statusAtualiza = int.tryParse(atualizaStatus ?? '');
      if (statusAtualiza == null || statusAtualiza <= 0) {
        print("Entrada invalida! Digite Algo!");
        continue;
      } else if (statusAtualiza > 3) {
        print("Entrada invalida! Digite um Número Dentro das Opções!");
        continue;
      }

      // tarefas.update("concluida", (value) => statusAtualiza +1);
      
    } 
    else if (opcao == 4) {
      stdout.write("Digite o id da tarefa a excluir ");
      // úsuario escolhe uma das opções de ação para inicias o sistema
      String? excluir = stdin.readLineSync();
      int? idExcluir = int.tryParse(excluir ?? '');
      if (idExcluir == null || idExcluir <= 0) {
        print("Entrada invalida! Nenhuma Tarefa excluida!");
        continue;
      }
      // excluir tarefa
      tarefas.removeWhere((t) => t['id'] == idExcluir);
    }
  }
}
