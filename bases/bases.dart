import 'dart:io';
import 'dart:math';

void main() {
  print(" ");
  print("~°" * 60);
  print(".°" * 30);
  print("~-" * 30);

  List<String> emoticon = [
    ":)",
    ":]",
    ":>",
    "8)",
    ":}",
    "=]",
    "=)",
    ":D",
    "8D",
    "=D",
    "=3",
    "xD",
    "XD",
    ":(",
    ":c",
    ":<",
    ":[",
    ":{",
    ":(",
    ";(",
    ":'(",
    ":')",
    ":'D",
    ">:(",
    ">:[",
    "D':",
    "D:<",
    "D:",
    "D8",
    "D;",
    "D=",
    "DX",
    ":O",
    ":o",
    ":0",
    "80",
    ">:O",
    "=O",
    "=o",
    "=0",
    ":3",
    "=3",
    "x3",
    "X3",
    ">:3",
    ":*",
    ":x",
    ";D",
    ";3",
    ";)",
    ";]",
    ":P",
    "XP",
    "xp",
    ":p",
    ":Þ",
    ":þ",
    ":b",
    "d:",
    "=p",
    ">:b",
    ":/",
    ":I",
    ">:/",
    "=/",
    ":L",
    "=L",
    "T-T",
    "X_X",
    "x_x",
    "+_+",
    "X_x",
    "x_X",
    "<_<",
    ">_>",
    "<.<",
    ">.>",
    "O_O",
    "o_o",
    "O-O",
    "o‑o",
    "O_o",
    "o_O",
    ">.<",
    ">_<",
  ];
  emoticon[Random().nextInt(emoticon.length)];

  while (true) {
    print(" ");
    stdout.write('Deseja continuar? (s/n): ');
    String? resposta = stdin.readLineSync();
    print(".°" * 30);

    if (resposta == null || resposta.isEmpty) {
      print(" ");
      print('Resposta inválida!');
      print("~-" * 30);
      continue;
    }

    resposta = resposta.toLowerCase();

    if (resposta == 'n') {
      print(" ");
      print("Obrigado por usar! Encerrando o programa... ");
      print("~°" * 60);
      return;
    } else if (resposta == 's') {
      break; // Sai do laço e volta pro início do loop
    } else {
      print(" ");
      print('Opção inválida! Digite "s" ou "n".');
      print("~-" * 30);
    }
  }
}

// lê um inteiro (usado para escolher opções do menu)
int lerInt(String mensagem) {
  int? numero; // define a variavel "numero"

  while (numero == null) {
    // repete até o usuário digitar um número válido
    // verifica se a variavel é null dentro de um loop
    stdout.write(mensagem); // mostra a mensagem de entrada no terminal
    String entrada = stdin.readLineSync()!;
    // entrada onde o usuario vai digitar o numero

    numero = int.tryParse(entrada);
    // tenta converter a entrada para numero

    if (numero == null) {
      // se não conseguir retorna a seguinte mensagem
      print("Valor inválido!! Digite um número(ex:1,2,3,4,5)");
      print("~-" * 30);
    }
  }

  return numero; // retorna o número válido digitado
}

// lê um número decimal (double) para valores monetários
double lerDouble(String mensagem) {
  double?
  valor; // variável que guardará o double lido (pode ser nula inicialmente)

  while (valor == null) {
    // repete até o usuário digitar um número válido
    stdout.write(mensagem); // exibe a mensagem pedindo a entrada
    String entrada = stdin.readLineSync()!; // lê a linha digitada pelo usuário
    // substitui vírgula por ponto e tenta converter para double
    valor = double.tryParse(entrada.replaceAll(',', '.'));

    if (valor == null) {
      // se não conseguir retorna a seguinte mensagem
      print("Valor inválido!! Digite um número (ex: 1234.56)");
      print("~-" * 30);
    }
  }

  return valor; // retorna o número válido digitado
}
/* 
// lê um número decimal (double) para valores monetários
String lerString(String mensagem) {
  // variável que guardará o double lido (pode ser nula inicialmente)
  String? valor;

  while (true) {
    // repete até o usuário digitar um número válido
    stdout.write(mensagem); // exibe a mensagem pedindo a entrada
    String entrada = stdin.readLineSync()!; // lê a linha digitada pelo usuário

    if (entrada == null) {
      // se não conseguir retorna a seguinte mensagem
      print("Valor inválido!! Digite um número (ex: 1234.56)\n");
      print("~-" * 30);
    }
  }

  return valor; // retorna o número válido digitado
}

String lerString(String mensagem) {
  String? valor;
  List<int> paraLista = [];
  while (true) {
    stdout.write(mensagem);
    String entrada = stdin.readLineSync()!;

    List<String> partes = entrada.split(" ");

    paraLista = partes.map((p) => int.tryParse(p) ?? 0).toList();

    paraLista.forEach((e){
      if(e == null){}
    });
  }
} */

/*bool chamaFim() {
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
      break;
    } else if (resposta == 's') {
      break; // Sai do laço e volta pro início da calculadora
    } else {
      print(" ");
      print('Opção inválida! Digite "s" ou "n".');
      print("~°" * 20);
    }
  }
}*/
