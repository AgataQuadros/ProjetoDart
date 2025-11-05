import 'dart:io';
import 'dart:math';

/*5. Determinação do Segundo Valor de Pico
Dada uma lista de números inteiros, 
encontre e imprima o segundo maior valor presente na lista. 
A lista pode conter duplicatas, mas o segundo maior valor 
deve ser o valor distinto que é imediatamente menor que o maior valor.
*/

void main() {
  while (true) {
    List<int> numeros = [];
    while (true) {
      print(" ");
      print("~°" * 20);
      stdout.write("Digite uma sequencia de números separados por espaço: ");
      String entrada = stdin.readLineSync()!;
      print("");
      print("~" * 20);

      List<String> partes = entrada.split(" ");

      numeros = partes.map((p) => int.tryParse(p) ?? 0).toList();

      if (numeros.isEmpty || numeros.toSet().length <= 1) {
        print("Por favo digite números válidos e pelo menos dois diferentes!");
        print("");
        continue;
      } else {
        break;
      }
    }


    int prim_maior = numeros.reduce(max);

    List<int> lista_nova = [...numeros];

    lista_nova.remove(prim_maior);

    int seg_maior = lista_nova.reduce(max);

    while (seg_maior == prim_maior) {
      lista_nova.remove(seg_maior);
      seg_maior = lista_nova.reduce(max);
    }


    print(" ");
    print("Sua Lista: $numeros");
    print("~" * 20);
    print("Segundo Maior Número da Lista: $seg_maior");
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
