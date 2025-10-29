/** Faça um programa que leia um valor em joules e c
 * onverta para calorias (1 caloria = 4,184 joules)
 * , exibindo os resultados.
*/

import 'dart:io';

void main() {
  while (true) {
    print("");
    print("~°" * 20);
    stdout.write("Digite o valor do dividendo: ");
    String entrada = stdin.readLineSync()!; // entrada do 1º numero
    int? numero = int.tryParse(
      entrada.replaceAll(" ", ""),
    ); // retira qulquer espaço na entrada
    print("~" * 20);
    // valida a entrada
    if (numero == null || numero.isNegative) {
      print("");
      print("Valor inválida! Digite um número inteiro e positivo");
      print("~°" * 20);
      continue; // volta para o início do loop
    }

    double calorias = numero / 4.184;
    print("${numero.toStringAsFixed(2)} Joules é igual a");
    print("${calorias.toStringAsFixed(2)} Calorias");
    print("~" * 20);

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
