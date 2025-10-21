import 'dart:io';

void main() {
  while (true) {
    print(" ");
    print("~°" * 20);
    stdout.write("Digite um número: ");
    var numero1 = int.parse(
      stdin.readLineSync()!,
    ); // entrada do 1º numero aleatorio
    print("~" * 20);
    stdout.write("Digite um número: ");
    var numero2 = int.parse(
      stdin.readLineSync()!,
    ); // entrada do 2º numero aleatorio
    print("~°" * 20);

    if (numero2 == 0) {
      print(" ");
      print("~°" * 20);
      print("A divisão por 0 não é possivel");
      print("Reinicie e tente novamente com valores diferentes");
      // a "!" mas linahs de leitura não deixa
      //fazer uma validação externa de null
      // por isso eu não fiz uma
    } else {
      int soma = numero1 + numero2; // Calculo da soma

      int subtracao = numero1 - numero2; // Calculo da subtração

      int produto = numero1 * numero2; // Calculo do produto

      double divisao = numero1 / numero2; // Calculo da divisão

      int divInteira = numero1 ~/ numero2; // Calculo da divisão inteira

      int restoDivisao = numero1 % numero2; // Calculo do resto da divisão

      print("~" * 20);
      print("A soma de $numero1 + $numero2 = $soma");
      print(" ");
      print("A subtração de $numero1 - $numero2 = $subtracao");
      print(" ");
      print("A multiplicação de $numero1 X $numero2 = $produto");
      print(" ");
      print("A divisão de $numero1 / $numero2 = $divisao");
      print(" ");
      print("A divisão inteira de $numero1 ~/ $numero2 = $divInteira");
      print(" ");
      print("O resto da divisão de $numero1 % $numero2 = $restoDivisao");
      print("~°" * 20);
    }

    stdout.write("Pressione enter para continuar ou 0 para sair: ");
    String continuar = stdin.readLineSync()!;
    print("~°" * 20);

    if (continuar == "0") {
      break;
    } else {
      continue;
    }
  }
}
