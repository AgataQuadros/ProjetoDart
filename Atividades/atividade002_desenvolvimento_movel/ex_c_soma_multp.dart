/** Faça um programa que receba um número inteiro 
 * N e calcule a soma de todos os 
 * múltiplos de 3 ou 5 menores que N 
*/

import 'dart:io';

void main() {
  while (true) {
    stdout.write("Digite o valor do inicio: ");
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

    String multiTres = "";
    String multiCinco = "";
    int somaTres = 0;
    int somaCinco = 0;

    for (int i = numero; i > 0; i--) {
      if (i % 3 == 0) {
        multiTres += "$i, ";
        somaTres += i;
      } else if (i % 5 == 0) {
        multiCinco += "$i, ";
        somaCinco += i;
      } else {
        continue;
      }
    }

    print(" ");
    print("Os multiplos de 3 do $numero são:");
    print(multiTres);
    print("E sua soma é $somaTres");
    print("~" * 20);
    print(" ");
    print("Os multiplos de 5 do $numero são:");
    print(multiCinco);
    print("E sua soma é $somaCinco");
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
