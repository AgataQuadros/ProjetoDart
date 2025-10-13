import 'dart:io';

void main() {
  stdout.write("Digite uma opção(hi/oi): "); // opção para variação de lingua
  var opcao = stdin.readLineSync()!; // lê a string diretamente
  opcao = opcao
      .toLowerCase(); // deixa tudo em minusculo para facilitar comparação

  if (opcao.isEmpty) {
    // valida se a entrada esta vazia, 
    // por conta da "!" na linha de leitura da string o sistema 
    // não deixa validar null, 
    // então estou lavidando se a entrada é vazia
    print("~" * 20);
    print("A entarada esta vazia!");
    print("Reinicie o programa e digite algo dentro das opções dadas!");
    print("~" * 20);
  }

  if (opcao == "hi") {
    // ira execuatar essa resposta caso a entrada seja "hi"
    print("~" * 20);
    print("Helo World!!");
    print("~" * 20);
  } else if (opcao == "oi") {
    // ira executar essa resposta caso a entrada seja "oi"
    print("~" * 20);
    print("Olá Mundo!!");
    print("~" * 20);
  } else {
    // ira executar essa resposta caso a entra se qualquer outra resposta
    print("~" * 20);
    print("Opção Invalida!!");
    print("~" * 20);
  }
}
