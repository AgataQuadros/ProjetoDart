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
        return;
      } else if (resposta == 's') {
        break; // Sai do laço e volta pro início do loop
      } else {
        print(" ");
        print('Opção inválida! Digite "s" ou "n".');
        print("~°" * 20);
      }
    }
}