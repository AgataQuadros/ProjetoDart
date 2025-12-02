import 'dart:io';

/*9. Filtragem de Emails Válidos (Regra Simples)
Dada uma lista de strings que supostamente são 
endereços de email, filtre e colete em uma 
nova lista apenas os emails que contêm 
exatamente um caractere '@' e terminam com ".com".
*/
String lerString(lista) {
  while (true) {
    print(" ");
    print("~°" * 20);
    stdout.write('Entre com um email básico: ');
    String entrada = stdin.readLineSync()!;
    print("");
    print("~" * 20);

    String tratada = entrada.trim();

    if (tratada.isEmpty) {
      print(" ");
      print('Resposta inválida!');
      print("~°" * 20);
      continue;
    }

    return tratada;
  }
}

bool desejaContinuar() {
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

void validaEmail(palavra) {
  bool retorna = true;
  while(retorna){
    var filtroArroba = palavra.contains("@");
    var filtroCom = palavra.endsWith(".com");

    if (filtroArroba == true && filtroCom == true) {
      print(palavra);
      print("É um email valido!");
      print("Parabéns você esta cadastrado(a, e)!");
      retorna = false;
    } else {
      print("Oh não falta algo no seu email!");
      print("Você tem certeza que ele contem um '@' e termina com '.com'?");
      break;
    }
  }
}

void main() {
  while (true) {
    List<String> lista = [];
    var palavra = lerString(lista);

    validaEmail(palavra);

    if (!desejaContinuar()) {
      print('Fim do programa!');
      return;
    }
  }
}
