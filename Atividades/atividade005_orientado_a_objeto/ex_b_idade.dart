/*2 - Faça um programa que peça um ano 
qualquer. O programa deverá 
calcular e imprimir a idade.*/

import 'dart:io';

// classe de validação de dados
class Validacao {
  // lê um inteiro (usado para escolher opções do menu)
  int lerInt(String mensagem) {
    int? numero; // define a variavel "numero"

    while (numero == null) {
      // repete até o usuário digitar um número válido
      // verifica se a variavel é null dentro de um loop
      stdout.write(mensagem); // mostra a mensagem de entrada no terminal
      String entrada = stdin.readLineSync()!;
      // entrada onde o usuario vai digitar o numero

      if (entrada.length > 4 || entrada.length <= 0) {
        print(
          "Por favor entre só com o ano em que você nasceu e o ano a comparar(ex: 2025-2006)",
        );
        print(".°" * 30);
      } else {
        numero = int.tryParse(entrada);
        // tenta converter a entrada para numero

        if (numero == null) {
          // se não conseguir retorna a seguinte mensagem
          print("Valor inválido!! Digite um número(ex:1,2,3,4,5)");
          print("~-" * 30);
        }
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

class Idade {
  var anoAtual;
  var anoNiver;

  Idade(this.anoAtual, this.anoNiver);

  int calcularIdade() => anoAtual - anoNiver;

  void exibir() {
    var idadeCalculada = calcularIdade();

    print(" ");
    print("~-" * 30);
    print("A sua idade é $idadeCalculada ano(s)");
    print("~-" * 30);
  }
}

void main() {
  while (true) {
    print(" ");
    Validacao validacao = Validacao(); // chama a classe Validação
    print("~°" * 60);
    int anoAtual = validacao.lerInt(
      "Entre com o ano que você deseja comparar(ex: 2025): ",
    );
    print(".°" * 30);
    int anoNiver = validacao.lerInt(
      "Entre com o ano do seu nascimento(ex: 2006): ",
    );

    Idade idade = Idade(anoAtual, anoNiver);

    idade.exibir();

    // chama a função desejaContinuar para que ela seja utilizada
    bool continuar = validacao.desejaContinuar();

    // permite que o programa pare ou resete
    if (!continuar) {
      break;
    }
  }
}
