import 'dart:io';

void main() {
  while (true) {
    stdout.write("Digite o valor do dividendo: ");
    String entrada1 = stdin.readLineSync()!; // entrada do 1º numero
    int? numero = int.tryParse(
      entrada1.replaceAll(" ", ""),
    ); // retira qulquer espaço na entrada
    print("~" * 20);
    // valida a entrada
    if (numero == null || numero.isNegative) {
      print("");
      print("Valor inválida! Digite um número inteiro e positivo");
      print("~°" * 20);
      continue; // volta para o início do loop
    }

    int i = 1;

    while (i <= 10) {
      int tabuada = numero * i;
      print(" ");
      print("$numero x ${i} = $tabuada");
      print("~°" * 20);
      i++;
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
