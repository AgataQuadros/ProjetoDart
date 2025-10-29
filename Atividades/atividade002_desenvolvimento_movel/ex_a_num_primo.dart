/**
 * Faça um programa que receba dois números inteiros A e B e 
 * imprima todos os números primos entre A e B.
 */

import 'dart:io';

void main() {
  while (true) {
    String resultado = ""; // guarda os números primos encontrados

    stdout.write("Digite o valor do inicio: ");
    String entrada1 = stdin.readLineSync()!; // entrada do 1º numero
    int? inicio = int.tryParse(
      entrada1.replaceAll(" ", ""),
    ); // retira qulquer espaço na entrada
    print("~" * 20);
    // valida a entrada
    if (inicio == null || inicio.isNegative) {
      print("");
      print("Valor inválida! Digite um número inteiro e positivo");
      print("~°" * 20);
      continue; // volta para o início do loop
    }
    stdout.write("Digite o valor do inicio: ");
    String entrada2 = stdin.readLineSync()!; // entrada do 1º numero
    int? fim = int.tryParse(
      entrada2.replaceAll(" ", ""),
    ); // retira qulquer espaço na entrada
    print("~" * 20);
    // valida a entrada
    if (fim == null || fim.isNegative) {
      print("");
      print("Valor inválida! Digite um número inteiro e positivo");
      print("~°" * 20);
      continue; // volta para o início do loop
    }

    for (int i = inicio; i <= fim; i++) {
      if (i < 2) continue; // 0 e 1 não são primos

      bool primo = true; // assume que é primo até provar o contrário

      // verifica se existe algum divisor além de 1 e dele mesmo
      for (int j = 2; j <= i ~/ 2; j++) {
        if (i % j == 0) {
          primo = false;
          break; // achou divisor = não é primo
        }
      }

      if (primo) {
        resultado += "$i, ";
      }
    }

    print("~" * 20);
    if (resultado.isEmpty) {
      print("Não há números primos entre $inicio e $fim.");
    } else {
      print("Os números primos entre $inicio e $fim são:");
      print(
        resultado.substring(0, resultado.length - 2),
      ); // remove vírgula final
    }
    print("~" * 20);

    print("");
    print("~°" * 20);
    stdout.write("Deseja realizar outro cálculo? (s/n): ");
    String resposta = stdin.readLineSync()!.trim().toLowerCase();
    print("~" * 20);

    if (resposta == 'n') {
      print("");
      print("Obrigado por usar! Encerrando o programa...");
      print("~°" * 20);
      break;
    }
  }
}
