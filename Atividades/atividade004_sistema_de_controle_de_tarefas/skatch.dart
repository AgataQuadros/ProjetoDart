import 'dart:io';

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
void main() {
  // List<Map<String, dynamic>> tarefas = [];
  // print(" ");
  // print("~°" * 60);
  // print(".°" * 30);
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

    stdout.write("Entre com a tarefa: ");
    // úsuario entra com a tarefa em si
    String? tarefa = stdin.readLineSync();
    if (tarefa == null || tarefa.trim().isEmpty) {
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

    stdout.write("Entre com o número da tarefa a excluir: ");
    // exclue uma tarefa de acordocom o número, ex: 1 ou 5
    String? entradaExcluir = stdin.readLineSync();
    int? excluir = int.tryParse(entradaExcluir ?? '');
    if (excluir == null || excluir <= 0) {
      print("Entrada invalida! Digite Algo!");
      continue;
    }


    while (true) {
      print(" ");
      stdout.write('Deseja continuar? (s/n): ');
      String? resposta = stdin.readLineSync();
      print("~" * 20);

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
        print(" ");
        print("~°" * 60);
        print(" ");
        return;
      } else if (resposta == 's') {
        break; // Sai do laço e volta pro início da calculadora
      } else {
        print(" ");
        print('Opção inválida! Digite "s" ou "n".');
        print(".°" * 30);
      }
    }
  }
}

// criar entrada para a tarefa e para o status da tarefa X
// id da tareaf atualiza automatico
// criar entrada para escolher opções que sera 
//  liberada após a primeira entrada X (decidi que você imediatamente entra por esse menu)
// escolhas : adicionar outra tarefa, atualizar status, excluir tarefa X
// "filtro" entre tarefas ativas, em andamento e finalizada