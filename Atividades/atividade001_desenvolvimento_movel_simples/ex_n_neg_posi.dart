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
    int resposta = 0; // define a variave resposta

    // validação para saber qual conta fazer
    if (numero <= 0) {
      resposta = numero * 3;
      print("~" * 20);
      print("o triplo de $numero é");
      print(resposta);
      print("~" * 20);
    } else {
      resposta = numero * 2;
      print("~" * 20);
      print("o dobro se $numero é");
      print(resposta);
      print("~" * 20);
    }
  }
}
