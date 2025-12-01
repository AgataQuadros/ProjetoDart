import 'dart:io';

/*7. Criação de Frase com Filtro
Dada uma lista de strings, crie uma única string (frase) 
concatenando apenas as palavras que terminam com a letra 
'R' (maiúscula ou minúscula). As palavras devem ser 
separadas por um espaço na frase final.
*/

List<String> lerString(lista) {
  List<String> partes = [];
  while (true) {
    print(" ");
    print("~°" * 20);
    stdout.write('Entre com uma sequencia de palavras separadas por espaço: ');
    String entrada = stdin.readLineSync()!;
    print("");
    print("~" * 20);

    partes = entrada.split(" ");

    return partes;
  }
}

bool desejaContinuar() {
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
      return false;
    } else if (resposta == 's') {
      return true; // Sai do laço e volta pro início da calculadora
    } else {
      print(" ");
      print('Opção inválida! Digite "s" ou "n".');
      print("~°" * 20);
    }
  }
}

String filtraFrase(palavras) {
  var filtragem = palavras.where(
    (palavra) =>
        palavra.toLowerCase().startsWith("r") ||
        palavra.toLowerCase().endsWith("r"),
  );

  String frase = filtragem.join(' ');

  return frase;
}

void main() {
  while (true) {
    List<String> lista = [];
    var palavras = lerString(lista);

    var resultado = filtraFrase(palavras);

    print("Resultado final:");
    print(resultado);

    if (!desejaContinuar()) {
      print('Fim do programa!');
      return;
    }
  }
}
