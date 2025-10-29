/** Faça um programa que receba dois 
 * números inteiros e calcule o MDC 
 * usando o algoritmo de Euclides com repetição.
*/

import 'dart:io';

void main() {
  while (true) {
    print(" ");
    print("~°" * 20);
    stdout.write("Digite o 1º número: ");
    String entrada1 = stdin.readLineSync()!; // entrada do 1º numero
    int? a = int.tryParse(
      entrada1.replaceAll(" ", ""),
    ); // retira qulquer espaço na entrada
    print("~" * 20);
    // valida a entrada
    if (a == null || a.isNegative) {
      print("");
      print("Valor inválida! Digite um número inteiro e positivo");
      print("~°" * 20);
      continue; // volta para o início do loop
    }

    stdout.write("Digite o 2º número: ");
    String entrada2 = stdin.readLineSync()!; // entrada do 1º numero
    int? b = int.tryParse(
      entrada2.replaceAll(" ", ""),
    ); // retira qulquer espaço na entrada
    print("~" * 20);
    // valida a entrada
    if (b == null || b.isNegative) {
      print("");
      print("Valor inválida! Digite um número inteiro e positivo");
      print("~°" * 20);
      continue; // volta para o início do loop
    }

    while (b != 0) {
      int resto = a! % b!;
      a = b;
      b = resto;
    }

    print("$a");

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
