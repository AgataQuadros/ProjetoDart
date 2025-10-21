import 'dart:io';

void main() {
  stdout.write("Digite um número: ");
  String entrada = stdin.readLineSync()!; // entrada de um numero aleatorio

  int? numero = int.tryParse(entrada); // tenta a entarda converter pra número

  if (numero == null) {
    // valida se a converção resultou em numero ou não
    // se não retorna null e retorna a resposta de invalidez
    print("Isso não é um número válido!");
  } else {
    // se sim continua o sistema normalmente
    int dobro = numero * 2; // retorna o dobro
    int triplo = numero * 3; // retorna o triplo

    print("~" * 20);
    print("O dobro de $numero é $dobro ");
    print("Seu triplo é $triplo");
    print("~" * 20);
  }
}
