import 'dart:io';

void main() {
  while (true) {
    // Solicita um número ao usuário
    stdout.write('Digite um número: ');
    String? entrada = stdin.readLineSync();

    // Verifica se a entrada é válida
    if (entrada == null || entrada.trim().isEmpty) {
      print('Entrada inválida!');
      continue;
    }

    // Tenta converter a entrada para número (double)
    double? numero = double.tryParse(entrada);
    if (numero == null) {
      print('Valor inválido! Digite um número válido.');
      continue;
    }

    double resultado;

    // Verifica se o número é positivo ou negativo
    if (numero >= 0) {
      resultado = numero * 2;
      print('O número é positivo. O dobro de $numero é ${resultado.toStringAsFixed(2)}');
    } else {
      resultado = numero * 3;
      print('O número é negativo. O triplo de $numero é ${resultado.toStringAsFixed(2)}');
    }

    // Chama a função para perguntar se continua
    if (!desejaContinuar()) {
      print('Fim do programa!');
      return;
    }

    print(''); // Separador visual
  }
}

/// Função que pergunta ao usuário se deseja continuar
bool desejaContinuar() {
  while (true) {
    stdout.write('Deseja continuar? (s/n): ');
    String? resposta = stdin.readLineSync();

    if (resposta == null || resposta.trim().isEmpty) {
      print('Resposta inválida!');
      continue;
    }

    resposta = resposta.toLowerCase();

    if (resposta == 'n') {
      return false;
    } else if (resposta == 's') {
      return true;
    } else {
      print('Opção inválida! Digite "s" ou "n".');
    }
  }
}
