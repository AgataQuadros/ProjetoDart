import "dart:io";

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
      print("Valor inválido!! Digite um número\n");
      print("~°" * 20);
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
      print("Valor inválido!! Digite um número (ex: 1234.56)\n");
      print("~°" * 20);
    }
  }

  return valor; // retorna o número válido digitado
}

void main() {
  print("~°" * 20);
  // exibe o menu de formas disponíveis
  print(" ");
  print("1 - Quadrado");
  print("2 - Retângulo");
  print("3 - Triângulo");
  print("4 - Trapézio");
  print("5 - Círculo");
  print("");
  var forma = lerInt("Escolha a forma: "); // solicita a forma do calculo
  print("~°" * 20);

  double valorCalculado = 0;
  if (forma < 1 || forma > 5) {
    // valida se a opção de origem esta dentro das opções dadas
    print(
      "Por favor digite o número de alguma opção",
    ); // mensagem de erro se a opção estiver fora
    print("~°" * 20);
    return; // encerra o programa
  } else if (forma == 1) {
    // Quadrado

    var lado = lerDouble("Digite a medida do lado do quadrado: ");
    valorCalculado = lado * 4;
    // multiplica o lado por ele mesmo (pois todos são iguais)

    print(" ");
    print("A área ficam em ${valorCalculado.toStringAsFixed(2)}cm");
  } else if (forma == 2) {
    // Retângulo

    var lado = lerDouble("Digite a medida da largura do retângulo: ");
    var altura = lerDouble("Digite a medida da altura do retângulo: ");
    valorCalculado = lado * altura; // multiplica a base pala altura

    print(" ");
    print("A área ficam em ${valorCalculado.toStringAsFixed(2)}");
  } else if (forma == 3) {
    // Triângulo

    var lado = lerDouble("Digite a medida da largura do retângulo: ");
    var altura = lerDouble("Digite a medida da altura do retângulo: ");
    valorCalculado = (lado * altura) / 2;
    // multiplica base por altura e divide o resultado por 2

    print(" ");
    print("A área ficam em ${valorCalculado.toStringAsFixed(2)}");
  } else if (forma == 4) {
    // Trápezio

    var altura = lerDouble("Digite a medida da largura do trápezio: ");
    var basesinha = lerDouble("Digite a medida da  base menor do trápezio: ");
    var basesona = lerDouble("Digite a medida da base maior do trápezio: ");
    valorCalculado = ((basesona + basesinha) / 2) * altura;
    // soma as bases, divide por 2 para achar a média, e multiplica pela altura
    print(" ");
    print("A área ficam em ${valorCalculado.toStringAsFixed(2)}");
    ;
  } else {
    // Circulo

    var raio = lerDouble("Digite a medida do raio do círculo: ");
    valorCalculado = 3.14159 * (raio * raio);
    // multiplica o número π (3.14159) pelo raio elevado ao quadrado

    print(" ");
    print("A área ficam em ${valorCalculado.toStringAsFixed(2)}");
  }
  print("~" * 20);
}
