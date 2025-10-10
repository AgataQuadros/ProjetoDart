import 'dart:io';

void main() {
  stdout.write("Digite um número: ");
  var numero = int.parse(
    stdin.readLineSync()!,
  ); // entrada de um numero aleatorio

  int antecessor = numero - 1;
  int sucessor = numero + 1;

  print("~" * 20);
  print("O antecessor de $numero é $antecessor ");
  print("Seu sucessor é $sucessor");
  print("~" * 20);
}