/* 6 - Faça um programa que receba um número 
qualquer e calcule o dobro e o 
triplo desse número. */

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

class DobTri {
  var numero;

  DobTri({required this.numero});

  int dobro() => numero * 2;

  int triplo() => numero * 3;

  void exibir() {
    var mais2 = dobro();
    var mais3 = triplo();

    // exibe o resultado da função
    print(" ");
    print("~-" * 30);
    print("O dobro do numero $numero é $mais2");
    print(".°" * 30);
    print("O triplo do numero $numero é $mais3");
    print("~-" * 30);
  }
}

void main(){
  while(true){

    print(" ");
    print("~°" * 60);

    Validacao validacao = Validacao();

    int numero = validacao.lerInt("Entre com um número inteiro: ");

    DobTri dobtri = DobTri(numero: numero);

    dobtri.exibir();

    bool continuar = validacao.desejaContinuar();

    if(!continuar){
      break;
    }
  }
}