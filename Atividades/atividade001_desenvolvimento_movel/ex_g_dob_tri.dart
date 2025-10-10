import 'dart:io';

void main() {
  stdout.write("Digite um número: ");
  var numero = int.parse(
    stdin.readLineSync()!,
  ); // entrada de um numero aleatorio

  int dobro = numero * 2;
  int triplo = numero * 3;

  print("~" * 20);
  print("O dobro de $numero é $dobro ");
  print("Seu triplo é $triplo");
  print("~" * 20);
}