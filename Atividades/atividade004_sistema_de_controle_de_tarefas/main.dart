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
    print("  1 - Adicionar Nova Tarefa");
    print("  2 - Visualizar Tarefas");
    print("  3 - Aualizar Status");
    print("  4 - Exclui Tarefa");
    print(".°" * 30);

    stdout.write("Entre com a opção de acordo com o menu: ");
    // úsuario escolhe uma das opções de ação para inicias o sistema
    String? entrada = stdin.readLineSync();
    int? opcao = int.tryParse(entrada ?? "");
    if (opcao == null || opcao <= 0) {
      print("Entrada invalida! Digite Algo!");
      continue;
    } else if (opcao > 4) {
      print("Entrada invalida! Digite um Número Dentro das Opções!");
      continue;
    }

    if (opcao == 1) {
      // inserir informação no mapa
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
      int? status = int.tryParse(entradaStatus ?? "");
      if (status == null || status <= 0) {
        print("Entrada invalida! Digite Algo!");
        continue;
      } else if (status > 3) {
        print("Entrada invalida! Digite um Número Dentro das Opções!");
        continue;
      }

      String statusTexto = status.toString();
      if (status == 1) {
        statusTexto = "Ativa";
      } else if (status == 2) {
        statusTexto = "Em Andamento";
      } else if (status == 3) {
        statusTexto = "Finalizada";
      }

      tarefas.add({
        "id": proximoId,
        "titulo": tarefa,
        "descrição": descricao,
        "status": statusTexto,
      });
      proximoId++; // incrementa o ID automaticamente
    } else if (opcao == 2) {
      print(".°" * 30);
      tarefas.forEach((tarefa) => print(tarefa));
      print(".°" * 30);
    } else if (opcao == 3) {
      stdout.write("Entre com o id da tarefa:");
      String? entradaId = stdin.readLineSync();
      int? id = int.tryParse(entradaId ?? "");
      if (id == null || id <= 0) {
        print("Entrada invalida! Digite Algo!");
        continue;
      }
      var porTarefa = tarefas.firstWhere(
        (t) => t['id'] == id,
        orElse: () => {},
      );
      if (porTarefa.isEmpty) {
        print("Essa tarefa não existe");
        continue;
      }

      print(".°" * 30);
      print("-=-=-=-=-=- ATUALIZAR -=-=-=-=-=-");
      print("  1 - Titulo");
      print("  2 - Descrição");
      print("  3 - Status");
      print(".°" * 30);

      stdout.write("Entre com a opção de atualizaçaõ: ");
      String? entradaAtualizar = stdin.readLineSync();
      // o úsuario adiciona um status, no terminal vai aparecer a palavra
      int? opAtt = int.tryParse(entradaAtualizar ?? "");
      if (opAtt == null || opAtt <= 0) {
        print("Entrada invalida! Digite Algo!");
        continue;
      } else if (opAtt > 3) {
        print("Entrada invalida! Digite um Número Dentro das Opções!");
        continue;
      }

      if (opAtt == 1) {
        stdout.write("Entre com a tarefa: ");
        // úsuario entra com a tarefa em si
        String? tituloNovo = stdin.readLineSync();
        if (tituloNovo == null || tituloNovo.trim().isEmpty) {
          print("Entrada invalida! Digite Algo!");
          continue;
        }

        porTarefa['titulo'] = tituloNovo;
      } else if (opAtt == 2) {
        stdout.write("Entre com a nova descrição: ");
        // úsuario entra com a tarefa em si
        String? descricaoNova = stdin.readLineSync();
        if (descricaoNova == null || descricaoNova.trim().isEmpty) {
          print("Entrada invalida! Digite Algo!");
          continue;
        }

        porTarefa['descrição'] = descricaoNova;
      } else if (opAtt == 3) {
        print(".°" * 30);
        print("-=-=-=-=-=- STATUS -=-=-=-=-=-");
        print("  1 - Ativa");
        print("  2 - Em Andamento");
        print("  3 - Finalizada");
        print(".°" * 30);

        stdout.write("Entre com o novo status da tarefa: ");
        String? entradaStatus = stdin.readLineSync();
        // o úsuario adiciona um status, no terminal vai aparecer a palavra
        int? status = int.tryParse(entradaStatus ?? "");
        if (status == null || status <= 0) {
          print("Entrada invalida! Digite Algo!");
          continue;
        } else if (status > 3) {
          print("Entrada invalida! Digite um Número Dentro das Opções!");
          continue;
        }

        String statusTexto = status.toString();
        if (status == 1) {
          statusTexto = "Ativa";
        } else if (status == 2) {
          statusTexto = "Em Andamento";
        } else if (status == 3) {
          statusTexto = "Finalizada";
        }

        porTarefa['status'] = statusTexto;
      }
    } else if (opcao == 4) {
      stdout.write("Entre com o id da tarefa:");
      String? entradaId = stdin.readLineSync();
      int? id = int.tryParse(entradaId ?? "");
      if (id == null || id <= 0) {
        print("Entrada invalida! Digite Algo!");
        continue;
      }
      var porTarefa = tarefas.firstWhere(
        (t) => t['id'] == id,
        orElse: () => {},
      );
      if (porTarefa.isEmpty) {
        print("Essa tarefa não existe");
        continue;
      }

      tarefas.removeWhere((t) => t['id'] == id);
      print("Tarefa excluida com sucesso!");
    }
  }
}
