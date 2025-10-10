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

  int resposta = 0;
  if (numero1 == numero2) {
    resposta = numero1 + numero2;
  }else {
    resposta = numero1 * numero2;
  }

  print("~" * 20);
  print(resposta);
  print("~" * 20);
}