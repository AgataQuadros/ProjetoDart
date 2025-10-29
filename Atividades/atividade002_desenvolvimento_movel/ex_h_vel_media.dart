/** Faça um programa que receba as distâncias 
 * percorridas a cada intervalo de tempo e 
 * calcule a velocidade média total do percurso.
*/

import 'dart:io';

void main() {
  while (true) {
    print(" ");
    stdout.write("Digite a distancia em quilometros: ");
    String entradaDis = stdin.readLineSync()!;
    double? distancia = double.tryParse(
      entradaDis.replaceAll(',', '.').replaceAll(" ", ""),
    );
    print("~" * 20);

    // valida se o capital é válido
    if (distancia == null || distancia.isNegative) {
      print("");
      print("Valor inválido! Digite um número positivo.");
      print("~°" * 20);
      continue; // volta para o início do loop
    }

    print(" ");
    stdout.write("Digite o tempo em horas: ");
    String entradaTem = stdin.readLineSync()!;
    int? tempo = int.tryParse(
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

    double velocidadeMedia = distancia / tempo;

    print("");
    print("Em um percurso de ${distancia.toStringAsFixed(2)}km");
    print("");
    print("Percorrido em um tempo de $tempo\h");
    print("");
    print("A velocidade média é de ${velocidadeMedia.toStringAsFixed(2)}km/h");
    print("");
    print("~" * 20);
    print("");

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
