import 'dart:io';

/*6. Filtragem Dupla em Lista de Palavras
Dada uma lista de palavras (strings), 
filtre e colete em uma nova lista apenas as 
palavras que satisfazem duas condições simultâneas: 
1) o comprimento da palavra deve ser maior que 5 caracteres; 
2) a palavra deve começar com a letra 'A' (maiúscula ou minúscula).
*/

void main() {
  while (true) {
    List<String> palavras = [];
    while (true) {
      print(" ");
      print("~°" * 20);
      stdout.write("Digite uma sequencia de palavras separados por espaço: ");
      String entrada = stdin.readLineSync()!;
      print("");
      print("~" * 20);

      palavras = entrada.split(" ").toList();

      if (palavras.isEmpty) {
        print("Por favor digite um número válido");
        print(" ");
        print("~°" * 20);
        continue;
      } else {
        break;
      }
    }

    var palavra_filtrada = palavras.where(
      (palavra) =>
          palavra.length >= 5 && palavra[0].toLowerCase() == "a" ||
          palavra[0].toLowerCase() == "á" ||
          palavra[0].toLowerCase() == "à" ||
          palavra[0].toLowerCase() == "ã",
    ).toList();

    print(" ");
    print("Sua Lista: $palavras");
    print("~" * 20);
    print("Segundo Maior Número da Lista: $palavra_filtrada");
    print("~" * 20);

    while (true) {
      print(" ");
      stdout.write('Deseja continuar? (s/n): ');
      String? resposta = stdin.readLineSync();
      print("~" * 20);

      if (resposta == null || resposta.isEmpty) {
        print(" ");
        print('Resposta inválida!');
        print("~°" * 20);
        continue;
      }

      resposta = resposta.toLowerCase();

      if (resposta == 'n') {
        print(" ");
        print("Obrigado por usar! Encerrando o programa... ");
        print("~°" * 20);
        return;
      } else if (resposta == 's') {
        break; // Sai do laço e volta pro início da calculadora
      } else {
        print(" ");
        print('Opção inválida! Digite "s" ou "n".');
        print("~°" * 20);
      }
    }
  }
}
