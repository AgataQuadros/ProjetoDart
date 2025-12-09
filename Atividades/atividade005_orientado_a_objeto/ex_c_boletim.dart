/*3 - Faça um programa que peça 4 notas com  entrada de dados. 
O programa deverá calcular a média das notas digitadas. */

import 'dart:io';

// classe de validação de dados
class Validacao {
  // lê um double (usado para coletar as notas)
  double lerDouble(String mensagem) {
    double? numero; // define a variavel "numero"

    while (numero == null) {
      // repete até o usuário digitar um número válido
      // verifica se a variavel é null dentro de um loop
      stdout.write(mensagem); // mostra a mensagem de entrada no terminal
      String entrada = stdin.readLineSync()!;
      // entrada onde o usuario vai digitar o numero

      numero = double.tryParse(entrada);
      // tenta converter a entrada para numero

      if (numero == null) {
        // se não conseguir retorna a seguinte mensagem
        print("Valor inválido!! Digite um número(ex:1,2,3,4,5)");
        print("~-" * 30);
      } else if (numero < 0 || numero > 25) {
        // caso o numero esteja fora do intervalo ele envia a seguinte mensagem
        print("Valor inválido!!");
        print("Digite um número entre 0 e 25 para se clasificar como nota!!");
        print("~-" * 30);
      }
    }

    return numero; // retorna o número válido digitado
  }

  bool desejaContinuar() {
    while (true) {
      print(" ");
      stdout.write(
        'Deseja continuar? (s/n): ',
      ); // mostra a mensagem de entrada no terminal
      String? resposta = stdin
          .readLineSync(); // entrada onde o usuario vai digitar a resposta
      print("~-" * 30);

      // valida se a entrada é nula e responde com erro
      if (resposta == null || resposta.isEmpty) {
        print(" ");
        print('Resposta inválida!');
        print(".°" * 30);
        continue;
      }

      // passa a resposta para caixa baixa para facilitar a validação
      resposta = resposta.toLowerCase();

      // caso seja n(não) enviara esta mensagem
      if (resposta == 'n') {
        print(" ");
        print("Obrigado por usar! Encerrando o programa... ");
        print("~°" * 60);
        return false;
      }
      // caso seja s(sim) enviara essa resposta
      else if (resposta == 's') {
        return true; // Sai do laço e volta pro início da calculadora
      }
      // se for qualquer outra coisa enviara essa mensagem de erro
      else {
        print(" ");
        print('Opção inválida! Digite "s" ou "n".');
        print(".°" * 30);
      }
    }
  }
}

// classe onde a media será calculada
class Boletim {
  // declaração de variaveis
  var nota1;
  var nota2;
  var nota3;
  var nota4;

  Boletim({
    required this.nota1,
    required this.nota2,
    required this.nota3,
    required this.nota4,
  });

  double soma() => nota1 + nota2 + nota3 + nota4;

  double media() => (nota1 + nota2 + nota3 + nota4) / 4;

  void exibir() {
    var somas = soma();
    var medias = media();

    print(" ");
    print("========== BOLETIM =========");
    print("~-" * 30);
    print("----- Notas ------");
    print(nota1);
    print(nota2);
    print(nota3);
    print(nota4);
    print("----- Totais ------");
    print(somas);
    print(medias);
    print("~-" * 30);
  }
}

void main() {
  while (true) {
    print(" ");
    print("~°" * 60);
    Validacao validacao = Validacao();

    double nota1 = validacao.lerDouble("1ª nota:");
    double nota2 = validacao.lerDouble("2ª nota:");
    double nota3 = validacao.lerDouble("3ª nota:");
    double nota4 = validacao.lerDouble("4ª nota:");

    Boletim boletim = Boletim(
      nota1: nota1,
      nota2: nota2,
      nota3: nota3,
      nota4: nota4,
    );

    boletim.exibir();

    bool continuar = validacao.desejaContinuar();

    if (!continuar) {
      break;
    }
  }
}
