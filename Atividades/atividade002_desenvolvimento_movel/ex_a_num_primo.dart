/** Faça um programa que receba dois números inteiros A e B e 
 * imprima todos os números primos entre A e B. */

import 'dart:io';

void main() {
  String? resultado;
  while (true) {
    stdout.write("Digite o valor do inicio: ");
    String entrada1 = stdin.readLineSync()!; // entrada do 1º numero
    int? inicio = int.tryParse(
      entrada1.replaceAll(" ", ""),
    ); // retira qulquer espaço na entrada
    print("~" * 20);
    // valida a entrada
    if (inicio == null || inicio.isNegative) {
      print("");
      print("Valor inválido! Digite um número inteiro e positivo");
      print("~°" * 20);
      continue; // volta para o início do loop
    }

    stdout.write("Digite o valor do fim: ");
    String entrada2 = stdin.readLineSync()!; // entrada do ultimo numero
    int? fim = int.tryParse(
      entrada2.replaceAll(" ", ""),
    ); // retira qulquer espaço na entrada
    print("~" * 20);
    // valida a entrada
    if (fim == null || fim.isNegative) {
      print("");
      print("Valor inválido! Digite um número inteiro e positivo");
      print("~°" * 20);
      continue; // volta para o início do loop
    }
    int i = inicio;
    for (i; i <= fim; i++) {

      if(i < 2){

      }
    }

    for (int j = inicio; j < i; j++) {
      resultado ??= "";
      if (i % j == 0) {
        if (i == 2) {
          resultado += "$i, ";
        } else {
          break;
        }
      } else {
        if (!resultado.contains("$i")) {
          resultado += "$i, ";
        }
      }
    }

    print("~" * 20);
    print("os numeros primos são ");
    print(resultado);
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
