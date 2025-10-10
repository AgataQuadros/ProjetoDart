import 'dart:io';

void main() {
  stdout.write("Digite um número: ");
  var numero = int.parse(
    stdin.readLineSync()!,
  ); // entrada de um numero aleatorio

  int resposta = 0;
  if (numero <= 0) {
    resposta = numero * 3;
  }else {
    resposta = numero * 2;
  }

  print("~" * 20);
  print(resposta);
  print("~" * 20);
}