import 'dart:io';

void main() {
  while (true) {
    List<String> listaPalavras = ['Você', 'é', 'o', 'melhor', 'programador'];

    // Filtra palavras que terminam com 'r'
    var filtragem = listaPalavras.where((palavra) {
      return palavra.toLowerCase().endsWith('r');
    }).toList();

    // Cria a frase final
    String frase = filtragem.join(' ');

    print('\nPalavras filtradas: $filtragem');
    print('Frase final: "$frase"');

    // Pergunta ao usuário
    while (true) {
      stdout.write('\nDeseja continuar? (s/n): ');
      String? resposta = stdin.readLineSync();

      if (resposta == null || resposta.isEmpty) {
        print('Resposta inválida!');
        continue;
      }

      resposta = resposta.toLowerCase();

      if (resposta == 'n') {
        print('Fim do programa!');
        return;
      } else if (resposta == 's') {
        break;
      } else {
        print('Opção inválida! Digite "s" ou "n".');
      }
    }
  }
}