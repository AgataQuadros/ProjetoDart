/** Projeto 1 – Sistema de Controle de Tarefas(Ágata - Danilo - Isis)
O primeiro projeto propõe o desenvolvimento 
de um sistema de controle de tarefas, 
com o objetivo de organizar e acompanhar 
atividades do dia a dia. (Nesse sistema, 
cada tarefa deverá ser armazenada como um 
objeto do tipo Map, contendo as chaves ‘titulo’, 
‘descricao’ e ‘concluida’, todas associadas aos 
seus respectivos valores. As tarefas devem ser 
mantidas dentro de uma lista principal, representada 
por uma estrutura do tipo List<Map<String, dynamic>>.) 
(O programa deve permitir ao usuário adicionar novas 
tarefas,) (listar as existentes), marcar uma tarefa como 
concluída e excluir aquelas já finalizadas. É fundamental 
que o aluno manipule diretamente os valores do mapa, 
acessando e modificando dados por meio das chaves, 
como tarefa['titulo'] ou tarefa['concluida']. 
O sistema deve validar entradas nulas ou vazias, 
substituindo-as por textos padrão como “Não informado”, 
e empregar estruturas condicionais e de repetição para 
controlar o menu de interação. Ao final, o programa deve 
exibir o total de tarefas pendentes e concluídas. 
Como desafio adicional, o aluno pode implementar 
um filtro de busca por título utilizando o método .where(), 
sem diferenciar maiúsculas e minúsculas.
*/

// criar entrada para a tarefa e para o status da tarefa X
// id da tareaf atualiza automatico X
// criar entrada para escolher opções que sera
//  liberada após a primeira entrada X (decidi que você imediatamente entra por esse menu)
// escolhas : adicionar outra tarefa, atualizar status, excluir tarefa X
// "filtro" entre tarefas ativas, em andamento e finalizada
import 'dart:io';
import 'dart:math';

void main() {
  List<Map<String, dynamic>> tarefas = [];
  int proximoId = 1;
  List<String> emoticon = [
    ":)",
    ":]",
    ":>",
    "8)",
    ":}",
    "=]",
    "=)",
    ":D",
    "8D",
    "=D",
    "=3",
    "xD",
    "XD",
    ":(",
    ":c",
    ":<",
    ":[",
    ":{",
    ":(",
    ";(",
    ":'(",
    ":')",
    ":'D",
    ">:(",
    ">:[",
    "D':",
    "D:<",
    "D:",
    "D8",
    "D;",
    "D=",
    "DX",
    ":O",
    ":o",
    ":0",
    "80",
    ">:O",
    "=O",
    "=o",
    "=0",
    ":3",
    "=3",
    "x3",
    "X3",
    ">:3",
    ":*",
    ":x",
    ";D",
    ";3",
    ";)",
    ";]",
    ":P",
    "XP",
    "xp",
    ":p",
    ":Þ",
    ":þ",
    ":b",
    "d:",
    "=p",
    ">:b",
    ":/",
    ":I",
    ">:/",
    "=/",
    ":L",
    "=L",
    "T-T",
    "X_X",
    "x_x",
    "+_+",
    "X_x",
    "x_X",
    "<_<",
    ">_>",
    "<.<",
    ">.>",
    "O_O",
    "o_o",
    "O-O",
    "o‑o",
    "O_o",
    "o_O",
    ">.<",
    ">_<",
  ];
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
    print("~-" * 30);
    int? opcao = int.tryParse(entrada ?? "");
    if (opcao == null || opcao <= 0) {
      print(" ");
      print("Entrada invalida! Digite Algo!");
      print(".°" * 30);
      continue;
    } else if (opcao > 4) {
      print(" ");
      print("Entrada invalida! Digite um Número Dentro das Opções!");
      print(".°" * 30);
      continue;
    }

    if (opcao == 1) {
      print(" ");
      // inserir informação no mapa
      stdout.write("Entre com a tarefa: ");
      // úsuario entra com a tarefa em si
      String? tarefa = stdin.readLineSync();
      print("~-" * 30);
      if (tarefa == null || tarefa.trim().isEmpty) {
        tarefa = emoticon[Random().nextInt(emoticon.length)];
      }

      print(" ");
      stdout.write("Entre com a descrição: ");
      // úsuario entra com a tarefa em si
      String? descricao = stdin.readLineSync();
      if (descricao == null || descricao.trim().isEmpty) {
        tarefa = emoticon[Random().nextInt(emoticon.length)];
      }

      print(".°" * 30);
      print("-=-=-=-=-=- STATUS -=-=-=-=-=-");
      print("  1 - Ativa");
      print("  2 - Em Andamento");
      print("  3 - Finalizada");
      print(".°" * 30);

      print(" ");
      stdout.write("Entre com o status da tarefa: ");
      String? entradaStatus = stdin.readLineSync();
      print("~-" * 30);
      // o úsuario adiciona um status, no terminal vai aparecer a palavra
      int? status = int.tryParse(entradaStatus ?? "");
      if (status == null || status <= 0) {
        print(" ");
        print("Entrada invalida! Digite Algo!");
        print(".°" * 30);
        continue;
      } else if (status > 3) {
        print(" ");
        print("Entrada invalida! Digite um Número Dentro das Opções!");
        print(".°" * 30);
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
      print(" ");
      print("~-" * 30);
      tarefas.forEach((tarefa) => print(tarefa));
      print("~-" * 30);
    } else if (opcao == 3) {
      print(" ");
      stdout.write("Entre com o id da tarefa:");
      String? entradaId = stdin.readLineSync();
      print("~-" * 30);
      int? id = int.tryParse(entradaId ?? "");
      if (id == null || id <= 0) {
        print(" ");
        print("Entrada invalida! Digite Algo!");
        print(".°" * 30);
      }
      var porTarefa = tarefas.firstWhere(
        (t) => t['id'] == id,
        orElse: () => {},
      );
      if (porTarefa.isEmpty) {
        print(" ");
        print("Essa tarefa não existe");
        print(".°" * 30);
        continue;
      }

      print(".°" * 30);
      print("-=-=-=-=-=- ATUALIZAR -=-=-=-=-=-");
      print("  1 - Titulo");
      print("  2 - Descrição");
      print("  3 - Status");
      print(".°" * 30);

      print(" ");
      stdout.write("Entre com a opção de atualizaçaõ: ");
      String? entradaAtualizar = stdin.readLineSync();
      print("~-" * 30);
      // o úsuario adiciona um status, no terminal vai aparecer a palavra
      int? opAtt = int.tryParse(entradaAtualizar ?? "");
      if (opAtt == null || opAtt <= 0) {
        print(" ");
        print("Entrada invalida! Digite Algo!");
        print(".°" * 30);
        continue;
      } else if (opAtt > 3) {
        print(" ");
        print("Entrada invalida! Digite um Número Dentro das Opções!");
        print(".°" * 30);
        continue;
      }

      if (opAtt == 1) {
        print(" ");
        stdout.write("Entre com a tarefa: ");
        // úsuario entra com a tarefa em si
        String? tituloNovo = stdin.readLineSync();
        print("~-" * 30);
        if (tituloNovo == null || tituloNovo.trim().isEmpty) {
          tituloNovo = emoticon[Random().nextInt(emoticon.length)];
        }

        porTarefa['titulo'] = tituloNovo;
        print(" ");
        print("Titulo atualizado com sucesso!");
        print(".°" * 30);
      } else if (opAtt == 2) {
        print(" ");
        stdout.write("Entre com a nova descrição: ");
        // úsuario entra com a tarefa em si
        String? descricaoNova = stdin.readLineSync();
        print("~-" * 30);
        if (descricaoNova == null || descricaoNova.trim().isEmpty) {
          descricaoNova = emoticon[Random().nextInt(emoticon.length)];
        }

        porTarefa['descrição'] = descricaoNova;
        print(" ");
        print("Descrição atualizada com sucesso!");
        print(".°" * 30);
      } else if (opAtt == 3) {
        print(".°" * 30);
        print("-=-=-=-=-=- STATUS -=-=-=-=-=-");
        print("  1 - Ativa");
        print("  2 - Em Andamento");
        print("  3 - Finalizada");
        print(".°" * 30);

        print(" ");
        stdout.write("Entre com o novo status da tarefa: ");
        String? entradaStatus = stdin.readLineSync();
        print("~-" * 30);
        // o úsuario adiciona um status, no terminal vai aparecer a palavra
        int? status = int.tryParse(entradaStatus ?? "");
        if (status == null || status <= 0) {
          print(" ");
          print("Entrada invalida! Digite Algo!");
          print(".°" * 30);
          continue;
        } else if (status > 3) {
          print(" ");
          print("Entrada invalida! Digite um Número Dentro das Opções!");
          print(".°" * 30);
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
        print(" ");
        print("Status atualizado com sucesso!");
        print(".°" * 30);
      }
    } else if (opcao == 4) {
      print(" ");
      stdout.write("Entre com o id da tarefa:");
      String? entradaId = stdin.readLineSync();
      print("~-" * 30);
      int? id = int.tryParse(entradaId ?? "");
      if (id == null || id <= 0) {
        print(" ");
        print("Entrada invalida! Digite Algo!");
        print("~-" * 30);
        continue;
      }
      var porTarefa = tarefas.firstWhere(
        (t) => t['id'] == id,
        orElse: () => {},
      );
      if (porTarefa.isEmpty) {
        print(" ");
        print("Essa tarefa não existe");
        print("~-" * 30);
        continue;
      }

      tarefas.removeWhere((t) => t['id'] == id);
      print(" ");
      print("Tarefa excluida com sucesso!");
      print(".°" * 30);
    }

    while (true) {
      print(" ");
      stdout.write('Deseja continuar? (s/n): ');
      String? resposta = stdin.readLineSync();
      print("~-" * 30);

      if (resposta == null || resposta.isEmpty) {
        print(" ");
        print('Resposta inválida!');
        print(".°" * 30);
        continue;
      }

      resposta = resposta.toLowerCase();

      if (resposta == 'n') {
        print(" ");
        print("Obrigado por usar! Encerrando o programa... ");
        print("~°" * 60);
        return;
      } else if (resposta == 's') {
        break; // Sai do laço e volta pro início do loop
      } else {
        print(" ");
        print('Opção inválida! Digite "s" ou "n".');
        print(".°" * 30);
      }
    }
  }
}