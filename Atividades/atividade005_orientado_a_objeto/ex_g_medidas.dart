/* 7 - Faça um programa para converter medidas */

import 'dart:io';

// classe de validação de dados
class Validacao {
  // lê um double (usado para coletar os valores)
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

class Medidas {
  var numero;

  Medidas({required this.numero});

  double cmm() => numero / 100; // de centímetros para metros
  double cmkm() => numero / 100000; // de centímetros para quilômetros
  double mcm() => numero * 100; // de metros para centímetros
  double mkm() => numero / 1000; // de metros para quilômetros
  double kmcm() => numero * 100000; // de quilômetros para centímetros
  double kmm() => numero * 1000; // de quilômetros para metros

  void exibir() {
    var cmmetro = cmm();
    var cmquilometro = cmkm();
    var mcentimetro = mcm();
    var mquilometro = mkm();
    var kmcentimetro = kmcm();
    var kmmetro = kmm();

    print(" ");
    print("~-" * 30);
    print("Cm -> M = ${cmmetro.toStringAsFixed(2)}");
    print(".°" * 30);
    print("Cm -> Km = ${cmquilometro.toStringAsFixed(2)}");
    print(".°" * 30);
    print("M -> Cm = ${mcentimetro.toStringAsFixed(2)}");
    print(".°" * 30);
    print("M -> Km = ${mquilometro.toStringAsFixed(2)}");
    print(".°" * 30);
    print("Km -> Cm = ${kmcentimetro.toStringAsFixed(2)}");
    print(".°" * 30);
    print("Km -> M ${kmmetro.toStringAsFixed(2)}");
    print("~-" * 30);
  }
}

void main() {
  while (true) {
    print(" ");
    print("~°" * 60);
    Validacao validacao = Validacao();

    double numero = validacao.lerDouble("Entre com o valor da medida: ");

    Medidas medidas = Medidas(numero: numero);

    medidas.exibir();

    bool continuar = validacao.desejaContinuar();

    if (!continuar) {
      break;
    }
  }
}
