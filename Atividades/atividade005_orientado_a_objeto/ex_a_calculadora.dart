// 1 - Faça um programa que peça 2 valores. Calcule e imprima  a soma,
//o produto, a subtração, a divisão,
//o resto da divisão e a divisão inteira.
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

// classe principal, onde o objetivo do programa é executado
class Calculadora {
  // declaração das variaveis
  var n1;
  var n2;

  // construtor padraão: receber n1 e n2 digitados pelo usuário
  Calculadora(this.n1, this.n2);

  // sequencia de ArrowFunction's

  int somar() => n1 + n2; // função para a Soma

  int subtrair() => n1 - n2; // função para a Subtração

  int multiplicar() => n1 * n2; // função para a Multiplicação/Produto

  double dividir() => n1.toDouble() / n2.toDouble(); // função para a Divisão

  double divisaoResto() =>
      n1.toDouble() % n2.toDouble(); // função para a divisão com Resto

  int divisaoInteira() => n1 ~/ n2; // função para a divisão Inteira

  // função de exibição

  void exibir() {
    // chama as funções
    var soma = somar();
    var subtrai = subtrair();
    var multiplica = multiplicar();
    var divide = dividir();
    var resto = divisaoResto();
    var inteira = divisaoInteira();

    // exibe os resultados firulados no terminal
    print(" ");
    print("~-" * 30);
    print("A soma de $n1 + $n2 = $soma");
    print(".°" * 30);
    print("A subtração de $n1 - $n2 = $subtrai");
    print(".°" * 30);
    print("A multiplicação de $n1 X $n2 = $multiplica");
    print(".°" * 30);
    print("A divisão de $n1 / $n2 = ${divide.toStringAsFixed(2)}");
    print(".°" * 30);
    print("O resto da divisão de $n1 % $n2 = ${resto.toStringAsFixed(2)}");
    print(".°" * 30);
    print("A divisão inteira de $n1 ~/ $n2 = $inteira");
    print("~-" * 30);
  }
}

// void principal, de onde tudo vai sair
void main() {
  // usando o enquanto para permitir o reset do programa
  while (true) {
    print(" ");
    print("~°" * 60);

    Validacao validacao = Validacao(); // chama a classe Validação
    // envia a mensagem para a função lerInt para que ela seja utilizada
    int n1 = validacao.lerInt("Entre com o 1º número intero: ");
    int n2 = validacao.lerInt("Entre com o 2º número intero: ");

    // envia ou valores para a classe Calculadora para que ela seja utilizada
    Calculadora calculadora = Calculadora(n1, n2);

    // chama a funçõ de exibição
    calculadora.exibir();

    // chama a função desejaContinuar para que ela seja utilizada
    bool continuar = validacao.desejaContinuar();

    // permite que o programa pare ou resete
    if (!continuar) {
      break;
    }
  }
}
