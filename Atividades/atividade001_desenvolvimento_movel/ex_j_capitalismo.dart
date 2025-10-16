import "dart:io";

// função para ler e validar um número decimal
int lerNumero(String mensagem) {
  int? numero; // define a variavel "numero"

  while (numero == null) {
    // verifica se a variavel é null dentro de um loop
    stdout.write(mensagem);
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

  return numero;
}

void main() {
  print("~°" * 20);
  var valor = lerNumero(
    "Digite o valor para conversão (sem simbolo de capital): ",
  );
  print("~°" * 20);

  print(" ");
  print("~°" * 20);
  print("1 - Reais");
  print("2 - Won");
  print("3 - Dolar");
  print("");
  var moeda = lerNumero("Escolha a moeda: ");
  print("~°" * 20);

  if (moeda == 0 || moeda > 3) {
    print("Por favor digite o número de alguma opção");
    print("~°" * 20);
    return;
  } else {
    print(" ");
    print("~°" * 20);
    print("1 - Reais");
    print("2 - Won");
    print("3 - Dolar");
    print(" ");
    var moedaPretendida = lerNumero("Escolha a converção pretendida: ");
    print("~°" * 20);

    double valorConvertido = 0;
    if (moedaPretendida == 1 && moeda == 2) {
      // Real para Won
      valorConvertido = valor * 260.76;

      print(" ");
      print("A conversão ficam em $valorConvertido wons");
      print("~" * 20);
    } else if (moedaPretendida == 1 && moeda == 3) {
      // Real para dolar
      valorConvertido = valor / 5.60;

      print(" ");
      print("A conversão ficam em $valorConvertido dolares");
      print("~" * 20);
    } else if (moedaPretendida == 2 && moeda == 1) {
      // Won para Reais
      valorConvertido = valor * 0.004 ;

      print(" ");
      print("A conversão ficam em $valorConvertido reais");
      print("~" * 20);
    } else if (moedaPretendida == 2 && moeda == 3) {
      // Won para Dolar
      valorConvertido = valor * 0.000714;

      print(" ");
      print("A conversão ficam em $valorConvertido dolares");
      print("~" * 20);
    } else if (moedaPretendida == 3 && moeda == 1) {
      // Dolar para Real
      valorConvertido = valor * 5.60;

      print(" ");
      print("A conversão ficam em $valorConvertido reais");
      print("~" * 20);
    } else if (moedaPretendida == 3 && moeda == 2) {
      // Dolar para Won
      valorConvertido = valor * 1400.0;

      print(" ");
      print("A conversão ficam em $valorConvertido wons");
      print("~" * 20);
    } else {
      print(" ");
      print("Não foi possivel fazer a conversão, tente novamente!");
      print("~°" * 20);
    }
  }
}