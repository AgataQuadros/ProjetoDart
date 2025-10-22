/** Faça um programa que simule o 
 * resfriamento de um líquido a 
 * partir de uma temperatura inicial 
 * até atingir a temperatura ambiente (25°C).
 * A cada segundo, a temperatura diminui 2%. 
 * Imprima a temperatura a cada segundo.
*/

import 'dart:io';

void main(){
  while(true){
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