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
    "Digite o valor para conversão (sem unidade de medida): ",
  );
  print("~°" * 20);

  print(" ");
  print("~°" * 20);
  print("1 - Centímetros (cm)");
  print("2 - Metros (m)");
  print("3 - Quilômetros (km)");
  print("");
  var medidaValor = lerNumero("Escolha a unidade de medida do valor: ");
  print("~°" * 20);

  if (medidaValor == 0 && medidaValor! < 4) {
    print("Por favor digite o número de alguma opção");
    print("~°" * 20);
    return;
  } else {
    print(" ");
    print("~°" * 20);
    print("1 - Centímetros (cm)");
    print("2 - Metros (m)");
    print("3 - Quilômetros (km)");
    print(" ");
    var medidaPretendida = lerNumero(
      "Escolha a unidade de medida pretendida: ",
    );

    print("~°" * 20);

    double valorConvertido = 0;
    if (medidaPretendida == 1 && medidaValor == 2) {
      // Centímetro para metro
      valorConvertido = valor / 100;

      print(" ");
      print("A medida ficam em $valorConvertido m");
      print("~" * 20);
    } else if (medidaPretendida == 1 && medidaValor == 3) {
      // Centímetro para quilômetro
      valorConvertido = valor / 100000;

      print(" ");
      print("A medida ficam em $valorConvertido km");
      print("~" * 20);
    } else if (medidaPretendida == 2 && medidaValor == 1) {
      // Metro para centímetro
      valorConvertido = valor * 100;

      print(" ");
      print("A medida ficam em $valorConvertido cm");
      print("~" * 20);
    } else if (medidaPretendida == 2 && medidaValor == 3) {
      // Metro para quilômetro
      valorConvertido = valor / 1000;

      print(" ");
      print("A medida ficam em $valorConvertido km");
      print("~" * 20);
    } else if (medidaPretendida == 3 && medidaValor == 1) {
      // Quilômetro para centímetro
      valorConvertido = valor * 100000;

      print(" ");
      print("A medida ficam em $valorConvertido cm");
      print("~" * 20);
    } else if (medidaPretendida == 3 && medidaValor == 2) {
      // Quilômetro para metro
      valorConvertido = valor * 1000;

      print(" ");
      print("A medida ficam em $valorConvertido m");
      print("~" * 20);
    } else {
      print(" ");
      print("Não foi possivel fazer a conversão, tente novamente!");
      print("~°" * 20);
    }
  }
}