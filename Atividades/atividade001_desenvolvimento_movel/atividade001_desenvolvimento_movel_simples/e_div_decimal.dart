import "dart:io";

void main() {
  print("");
  print("~°" * 20);
  print("DIVISÃO DECIMAL");
  print("~°" * 20);
  print("");

  while (true) {
    stdout.write("Digite o valor do dividendo: ");
    String entrada1 = stdin.readLineSync()!; // entrada do 1º numero
    double? numero1 = double.tryParse(
      entrada1.replaceAll(',', '.').replaceAll(" ", ""),
    ); // retira qulquer espaço na entrada e substitui oas virgula por pontos
    print("~" * 20);
    // valida a entrada
    if (numero1 == null || numero1.isNegative) {
      print("");
      print("Valor inválida! Digite um número inteiro e positivo");
      print("~°" * 20);
      continue; // volta para o início do loop
    }
    stdout.write("Digite o valor do divisor: ");
    String entrada2 = stdin.readLineSync()!; // entrada do 2º numero
    print("~°" * 20);
    double? numero2 = double.tryParse(
      entrada2.replaceAll(',', '.').replaceAll(" ", ""),
    ); // retira qulquer espaço na entrada e substitui oas virgula por pontos
    print("~" * 20);

    // valida se a entrada é válida
    if (numero2 == null || numero2.isNegative) {
      // validação do 2º numero
      print("");
      print("Valor inválida! Digite um número inteiro e positivo");
      print("~°" * 20);
      continue; // volta para o início do loop
    } else if (numero2 == 0) {
      // verifica se o divisor é zero e responde com erro
      print("Por favor digite um divisor diferente de zero!");
      print("~°" * 20);
      continue; // volta para o início do loop
    }

    double divisao = numero1 / numero2; // divide os numeros

    print(" ");
    print(
      "A divisão de $numero1 % $numero2 = ${divisao.toStringAsFixed(4)}",
    ); // força a saida a ter 4 casas decimais
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
