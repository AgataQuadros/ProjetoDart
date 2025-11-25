import 'dart:io';

void main() {
  while (true) {
    print(" ");
    print("~°" * 20);
    stdout.write("Digite uma opção(hi/oi): "); // opção para variação de lingua
    var opcao = stdin.readLineSync()!; // lê a string diretamente
    opcao = opcao
        .toLowerCase(); // deixa tudo em minusculo para facilitar comparação
        print("~°" * 20);

    if (opcao.isEmpty) {
      // valida se a entrada esta vazia,
      // por conta da "!" na linha de leitura da string o sistema
      // não deixa validar null,
      // então estou lavidando se a entrada é vazia
      print(" ");
      print("~°" * 20);
      print("A entarada esta vazia!");
      print("Reinicie o programa e digite algo dentro das opções dadas!");
      print("~°" * 20);
    }

    if (opcao == "hi") {
      // ira execuatar essa resposta caso a entrada seja "hi"
      print(" ");
      print("Helo World!!");
      print("~°" * 20);
    } else if (opcao == "oi") {
      // ira executar essa resposta caso a entrada seja "oi"
      print(" ");
      print("Olá Mundo!!");
      print("~°" * 20);
    } else {
      // ira executar essa resposta caso a entra se qualquer outra resposta
      print(" ");
      print("~°" * 20);
      print("Opção Invalida!!");
      print("~°" * 20);
    }
    print(" ");
    stdout.write("Pressione enter para continuar ou 0 para sair: ");
    String continuar = stdin.readLineSync()!;
    print("~°" * 20);

    if (continuar == "0") {
      break;
    } else {
      continue;
    }
  }
}
