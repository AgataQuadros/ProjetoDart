import 'dart:io';

void main() {
  stdout.write("Digite um número: ");
  var numero1 = int.parse(
    stdin.readLineSync()!,
  ); // entrada do 1º numero aleatorio
  stdout.write("Digite um número: ");
  var numero2 = int.parse(
    stdin.readLineSync()!,
  ); // entrada do 2º numero aleatorio

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
  print("~" * 20);
}
