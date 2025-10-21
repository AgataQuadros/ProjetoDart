import 'dart:io';

void main() {
  
  stdout.write("Digite um número: ");
  String entrada = stdin.readLineSync()!; // entrada de um numero aleatorio

  int? numero = int.tryParse(entrada); // tenta a entarda converter pra número
  
  if (numero == null) {
    // valida se a converção resultou em numero ou não
    // se não retorna null e retorna a resposta de invalidez
    print("❌ Isso não é um número válido!");
  } 
  else {
    // se sim continua o sistema normalmente
    int antecessor = numero - 1; // define o antecessor do numero
    int sucessor = numero + 1; // define o sucessor do numero

    print("~" * 20);
    print("O antecessor de $numero é $antecessor ");
    print("Seu sucessor é $sucessor");
    print("~" * 20);
  }
}
