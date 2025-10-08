import 'dart:io';

void main() {
  stdout.write("Digite uma opção(hi/oi): "); // opção para variação de lingua
  var opcao = stdin.readLineSync()!; // lê a string diretamente
  opcao = opcao.toLowerCase(); // deixa tudo em minusculo para facilitar comparação

  if (opcao == "hi") {
    print("~" * 20);
    print("Helo World!!");
    print("~" * 20);
  } else if (opcao == "oi") {
    print("~" * 20);
    print("Olá Mundo!!");
    print("~" * 20);
  } else {
    print("~" * 20);
    print("Opção Invalida!!");
    print("~" * 20);
  }
}
