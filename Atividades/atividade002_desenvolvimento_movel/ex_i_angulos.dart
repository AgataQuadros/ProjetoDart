/** Faça um programa que receba um ângulo 
 * em graus e classifique-o como agudo (<90°), 
 * reto (90°), obtuso (>90° e <180°) ou rente (180°).
*/

import 'dart:io';

void main() {
  while (true) {
    print("");
    print("~°" * 20);
    stdout.write("Digite o angulo sem o simbolo: ");
    String entrada = stdin.readLineSync()!; // entrada do 1º numero
    int? angulo = int.tryParse(
      entrada.replaceAll(" ", ""),
    ); // retira qulquer espaço na entrada
    print("~" * 20);
    // valida a entrada
    if (angulo == null || angulo.isNegative) {
      print("");
      print("Valor inválida! Digite um número inteiro e positivo");
      print("~°" * 20);
      continue; // volta para o início do loop
    }

    if (angulo < 90) {
      print("");
      print("O angulo $angulo é agudo!");
      print("~" * 20);
    } else if (angulo == 90) {
      print("");
      print("O angulo $angulo é reto!");
      print("~" * 20);
    } else if (angulo > 90 && angulo < 180) {
      print("");
      print("O angulo $angulo é obtuso!");
      print("~" * 20);
    } else {
      print("");
      print("O angulo $angulo é rente!");
      print("~" * 20);
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
