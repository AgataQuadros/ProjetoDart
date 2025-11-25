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
  // Taxas de cambio
  double UsdpraBrl = 5.60;
  double UsdpraKrw = 1400.0;
  double BrlpraKrw = 260.76;

  // calcula as taxas inversas a partir das acima para evitar inconsistências
  double brlpraUsd = 1 / UsdpraBrl;
  double krwpraUsd = 1 / UsdpraKrw;
  double krwpraBrl = 1 / BrlpraKrw;

  print("~°" * 20);
  var valor = lerDouble(
    "Digite o valor para conversão (sem simbolo de capital): ",
  ); // solicita o valor que será convertido, aceita decimais
  print("~°" * 20);
  // exibe o menu de moedas disponíveis
  print(" ");
  print("~°" * 20);
  print("1 - Reais");
  print("2 - Won");
  print("3 - Dolar");
  print("");
  var moeda = lerInt(
    "Escolha a moeda: ",
  ); // solicita a moeda do valorda entrada
  print("~°" * 20);

  if (moeda < 1 || moeda > 3) {
    // valida se a opção de origem esta dentro das opções dadas
    print(
      "Por favor digite o número de alguma opção",
    ); // mensagem de erro se a opção estiver fora
    print("~°" * 20);
    return; // encerra o programa
  } else {
    print(" ");
    // exibe o menu de moedas disponíveis
    print("~°" * 20);
    print("1 - Reais");
    print("2 - Won");
    print("3 - Dolar");
    print(" ");
    var moedaPretendida = lerInt(
      "Escolha a converção pretendida: ",
    ); // solicita a moeda para a converção
    print("~°" * 20);

    double valorConvertido = 0;
    if (moeda == moedaPretendida) {
      // se origem e destino forem iguais, não precisa converter
      print(
        "Origem e destino são iguais; valor permanece ${valor.toStringAsFixed(2)}",
      );
      print("~°" * 20);
      return; // encerra o programa
    } 
    else if (moeda == 1 && moedaPretendida == 2) {
      // Real para Won

      valorConvertido = valor * BrlpraKrw;// multiplica pelo valor do won

      print(" ");
      print("A conversão ficam em ${valorConvertido.toStringAsFixed(2)} wons");
    } 
    else if (moeda == 1 && moedaPretendida == 3) {
      // Real para dolar

      valorConvertido = valor * brlpraUsd; // multiplica pela taxa inversa do dólar

      print(" ");
      print(
        "A conversão ficam em ${valorConvertido.toStringAsFixed(2)} dolares",
      );
    } 
    else if (moeda == 2 && moedaPretendida == 1) {
      // Won para Reais

      valorConvertido = valor * krwpraBrl; // multiplica pela taxa inversa do real

      print(" ");
      print("A conversão ficam em ${valorConvertido.toStringAsFixed(2)} reais");
    } 
    else if (moeda == 2 && moedaPretendida == 3) {
      // Won para Dolar

      valorConvertido = valor * krwpraUsd; // multiplica pela taxa inversa do dólar

      print(" ");
      print(
        "A conversão ficam em ${valorConvertido.toStringAsFixed(2)} dolares",
      );
    } 
    else if (moeda == 3 && moedaPretendida == 1) {
      // Dolar para Real

      valorConvertido = valor * UsdpraBrl; // multiplica pela taxa do real

      print(" ");
      print("A conversão ficam em ${valorConvertido.toStringAsFixed(2)} reais");
    } 
    else {
      // Dolar para Won

      valorConvertido = valor * UsdpraKrw; // multiplica pela taxa do won

      print(" ");
      print("A conversão ficam em ${valorConvertido.toStringAsFixed(2)} wons");
    }
      print("~" * 20);
    }
}