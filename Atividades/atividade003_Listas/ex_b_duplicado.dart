import 'dart:io';

/*2. Identificação e Contagem de Ocorrências Distintas
Dada uma lista de inteiros que contém valores duplicados,
o desafio é determinar quantos valores únicos existem na lista. 
A solução deve percorrer a lista e construir uma nova coleção 
(ou usar um Set temporário, se permitido, ou uma lista auxiliar) 
para armazenar apenas os elementos que ainda não foram vistos,
reportando o total de elementos únicos ao final.
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


    var semDuplas = numeros.toSet();
    semDuplas.toList().sort();

    print(" ");
    print("Sua lista: $numeros");
    print("~" * 20);
    print("Lista filtarada: $semDuplas");
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
