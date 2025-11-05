import 'dart:io';

/*4. Multiplicação de Elementos Ímpares
Percorra uma lista de números inteiros. 
Para cada número, verifique se ele é ímpar. 
Se for ímpar, ele deve ser multiplicado por 2. 
Se for par, ele deve permanecer inalterado. 
O resultado final deve ser uma nova lista com os valores transformados.
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

      if (numeros.isEmpty) {
        print("Por favor digite um número válido");
        print(" ");
        print("~°" * 20);
        continue;
      } else {
        break;
      }
    }

    var impares = numeros.where((num) => num % 2 != 0).toList();

    var multiplica = impares.map((num) => num * 2).toList();

    var pares = numeros.where((num) => num % 2 == 0).toList();
    List<int> lista_completa = [];
    lista_completa.addAll(pares);
    lista_completa.addAll(multiplica);

    print(" ");
    print("Sua lista: $numeros");
    print("~" * 20);
    print("Lista Filtarada: $lista_completa");
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
