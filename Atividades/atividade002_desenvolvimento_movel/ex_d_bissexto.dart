/** Faça um programa que receba um ano 
 * e verifique se ele é bissexto, exibindo a resposta 
*/

import 'dart:io';

void main() {
  while (true) {
    stdout.write("Digite apenas o ano: ");
    String entrada = stdin.readLineSync()!; // entrada do 1º numero
    int? ano = int.tryParse(
      entrada.replaceAll(" ", ""),
    ); // retira qulquer espaço na entrada
    print("~" * 20);
    // valida a entrada
    if (ano == null || ano.isNegative) {
      print("");
      print("Valor inválida! Digite um número inteiro e positivo");
      print("~°" * 20);
      continue; // volta para o início do loop
    }

    if (ano % 400 == 0) {
      print(" ");
      print("O ano de $ano é bissexto!");
      print("~°" * 20);
    } else if (ano % 4 == 0 && ano % 100 != 0) {
      print(" ");
      print("O ano de $ano é bissexto!");
      print("~°" * 20);
    } else {
      print(" ");
      print("O ano de $ano não é bissexto!");
      print("~°" * 20);
    }

    print(" ");
    print("~°" * 20);
    stdout.write("Deseja realizar outro cálculo? (s/n): ");
    String resposta = stdin.readLineSync()!.trim().toLowerCase();
    print("~" * 20);

    if (resposta == 'n') {
      print("");
      print("Obrigado por usar! Encerrando o programa... ");
      print("~°" * 20);
      break;
    } else {
      continue;
    }
  }
}
