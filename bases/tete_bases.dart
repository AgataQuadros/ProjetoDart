import 'dart:io';
void main() {

print("0000");
}

bool desejaContinuar(){
  while (true) {
    print(" ");
    stdout.write('Deseja continuar? (s/n): ');
    String? resposta = stdin.readLineSync();
    print("~" * 20);

    if (resposta == null || resposta.isEmpty) {
      print(" ");
      print('Resposta inválida!');
      print("~°" * 20);
      continue;
    }

    resposta = resposta.toLowerCase();

    if (resposta == 'n') {
      print(" ");
      print("Obrigado por usar! Encerrando o programa... ");
      print("~°" * 20);
      return false;
    } else if (resposta == 's') {
      return true; // Sai do laço e volta pro início da calculadora
    } else {
      print(" ");
      print('Opção inválida! Digite "s" ou "n".');
      print("~°" * 20);
    }
  }
}