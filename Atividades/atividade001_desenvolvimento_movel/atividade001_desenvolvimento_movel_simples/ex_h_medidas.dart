import "dart:io";

// função para ler e validar um número decimal
int lerNumero(String mensagem) {
  int? numero; // define a variavel "numero"

  while (numero == null) {
    // verifica se a variavel é null dentro de um loop
    stdout.write(mensagem); // exibe a mensagem pedindo o número
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
  ); // solicita o valor numérico que será convertido
  print("~°" * 20);

  print(" ");
  // exibe as opções de unidade para o usuário
  print("~°" * 20);
  print("1 - Centímetros (cm)");
  print("2 - Metros (m)");
  print("3 - Quilômetros (km)");
  print("");
  var medidaValor = lerNumero(
    "Escolha a unidade de medida do valor: ",
  ); // lê qual é a unidade atual do valor
  print("~°" * 20);

  // Verifica se a opção escolhida é válida (entre 1 e 3)
  if (medidaValor < 1 || medidaValor > 3) {
    print("Por favor digite o número de alguma opção");
    print("~°" * 20);
    return; // Interrompe o programa se for inválido
  } else {
    print(" ");
    // exibe as opções de unidade para o usuário
    print("~°" * 20);
    print("1 - Centímetros (cm)");
    print("2 - Metros (m)");
    print("3 - Quilômetros (km)");
    print(" ");

    var medidaPretendida = lerNumero(
      "Escolha a unidade de medida pretendida: ",
    ); // lê qual unidade o usuário quer converter

    print("~°" * 20);

    double valorConvertido = 0; // Variável que guardará o resultado

    if (medidaValor == medidaPretendida) {
      // Caso a unidade inicial e final sejam iguais

      print(" ");
      print("As unidades são iguais, o valor permanece $valor.");
      print("~°" * 20);
    } 
    else if (medidaValor == 1 && medidaPretendida == 2) {
      // De centímetros para metros

      valorConvertido = valor / 100;

      print(" ");
      print("A medida fica em $valorConvertido m");
      print("~" * 20);
    } 
    else if (medidaValor == 1 && medidaPretendida == 3) {
      // De centímetros para quilômetros

      valorConvertido = valor / 100000;

      print(" ");
      print("A medida fica em $valorConvertido km");
      print("~" * 20);
    } 
    else if (medidaValor == 2 && medidaPretendida == 1) {
      // De metros para centímetros

      valorConvertido = valor * 100;

      print(" ");
      print("A medida fica em $valorConvertido cm");
      print("~" * 20);
    } 
    else if (medidaValor == 2 && medidaPretendida == 3) {
      // De metros para quilômetros

      valorConvertido = valor / 1000;

      print(" ");
      print("A medida fica em $valorConvertido km");
      print("~" * 20);
    } 
    else if (medidaValor == 3 && medidaPretendida == 1) {
      // De quilômetros para centímetros

      valorConvertido = valor * 100000;

      print(" ");
      print("A medida fica em $valorConvertido cm");
      print("~" * 20);
    } 
    else {
      // De quilômetros para metros

      valorConvertido = valor * 1000;

      print(" ");
      print("A medida fica em $valorConvertido m");
      print("~" * 20);
    }
  }
}
