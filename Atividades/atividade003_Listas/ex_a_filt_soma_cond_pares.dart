import 'dart:io';

/*1. Filtragem e Soma Condicional de Pares
Dada uma lista de números inteiros, o objetivo é primeiro filtrar apenas os 
números que são pares e, simultaneamente, maiores que 10.
Após a filtragem, deve-se calcular a soma total 
desses números restantes.*/

void main() {
  print(" ");
  print("~°" * 20);
  print("~" * 20);
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

    var numerosFiltrados = numeros
        .where((num) => num % 2 == 0 && num > 10)
        .toList();

    print(" ");
    print("Sua lista: $numeros");
    print("~" * 20);
    print("Lista filtarada: $numerosFiltrados");
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
