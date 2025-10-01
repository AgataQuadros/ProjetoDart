import 'dart:io';

void main() {

  stdout.write("Entre com valo de A: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Entre com valor de B: ");
  int b = int.parse(stdin.readLineSync()!);

  int soma = a + b;
  int subtracao = a - b;
  int produto = a * b;
  double divisao = a / b;
  int divInteira = a ~/ b;
  int restoDivisao = a % b;

  print("-" * 50);
  print("A soma de $a + $b = $soma");
  print("A subtração de $a - $b = $subtracao");
  print("A multiplicação de $a X $b = $produto");
  print("A divisão de $a / $b = $divisao");
  print("A divisão inteira de $a ~/ $b = $divInteira");
  print("O resto da divisão de $a % $b = $restoDivisao");
  print("-" * 50);
  
}