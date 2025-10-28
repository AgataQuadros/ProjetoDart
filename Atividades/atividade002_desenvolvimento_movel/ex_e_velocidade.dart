/** Faça um programa que leia o tempo (em segundos) 
 * e a aceleração constante de um objeto e imprima sua 
 * velocidade a cada segundo até o tempo informado. 
*/

import 'dart:io';

void main() {
  while (true) {
    print(" ");
    stdout.write("Digite o valor inicial (capital): ");
    String entradaTem = stdin.readLineSync()!;
    double? tempo = double.tryParse(
      entradaTem.replaceAll(',', '.').replaceAll(" ", ""),
    );
    print("~" * 20);

    // valida se o capital é válido
    if (tempo == null || tempo.isNegative) {
      print("");
      print("Valor inválido! Digite um número positivo.");
      print("~°" * 20);
      continue; // volta para o início do loop
    }

    // lê a taxa de juros
    print("");
    stdout.write("Digite a taxa de juros (% ao mês): ");
    String entradaVel = stdin.readLineSync()!;
    double? acelera = double.tryParse(
      entradaVel.replaceAll(',', '.').replaceAll(" ", ""),
    );
    print("~°" * 20);

    // valida se a taxa é válida
    if (acelera == null) {
      print("");
      print("Taxa inválida! Digite um número maior ou igual a 0.");
      print("~°" * 20);
      continue; // volta para o início do loop
    }

    double velocidade = 0;
    for (int i = 0; i < tempo; i++) {
      velocidade += acelera;
      print("");
      print("Velocidade atual: $velocidade");
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
