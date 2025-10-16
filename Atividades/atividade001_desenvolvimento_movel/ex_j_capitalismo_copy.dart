import 'dart:io'; // importa a biblioteca para entrada/saída no terminal

// lê um inteiro (usado para escolher opções do menu)
int lerInt(String mensagem) {
  int? numero; // variável que guardará o inteiro lido (pode ser nula inicialmente)

  while (numero == null) { // repete até o usuário digitar um inteiro válido
    stdout.write(mensagem); // exibe a mensagem pedindo a entrada
    String entrada = stdin.readLineSync()!; // lê a linha digitada pelo usuário
    numero = int.tryParse(entrada); // tenta converter a string para int; se falhar, número fica null

    if (numero == null) { // se a conversão falhar (entrada inválida)
      print("Valor inválido!! Digite um número inteiro\n"); // informa o usuário
      print("~°" * 20); // imprime uma linha decorativa
    }
  }

  return numero; // retorna o inteiro lido
}

// lê um número decimal (double) para valores monetários
double lerDouble(String mensagem) {
  double? valor; // variável que guardará o double lido (pode ser nula inicialmente)

  while (valor == null) { // repete até o usuário digitar um número válido
    stdout.write(mensagem); // exibe a mensagem pedindo a entrada
    String entrada = stdin.readLineSync()!; // lê a linha digitada pelo usuário
    // substitui vírgula por ponto e tenta converter para double
    valor = double.tryParse(entrada.replaceAll(',', '.'));

    if (valor == null) { // se a conversão falhar (entrada inválida)
      print("Valor inválido!! Digite um número (ex: 1234.56)\n"); // informa o usuário
      print("~°" * 20); // imprime uma linha decorativa
    }
  }

  return valor; // retorna o double lido
}

void main() {
  // Taxas de exemplo (atualize conforme desejar)
  const double usdToBrl = 5.60;      // 1 USD = 5.60 BRL
  const double usdToKrw = 1400.0;    // 1 USD = 1400 KRW
  const double brlToKrw = 260.76;    // 1 BRL = 260.76 KRW

  // calcula as taxas inversas a partir das acima para evitar inconsistências
  final double brlToUsd = 1 / usdToBrl; // 1 BRL = 1/5.60 USD
  final double krwToUsd = 1 / usdToKrw; // 1 KRW = 1/1400 USD
  final double krwToBrl = 1 / brlToKrw; // 1 KRW = 1/260.76 BRL

  print("~°" * 20); // imprime linha decorativa inicial

  // solicita o valor que será convertido (aceita decimais)
  double valor = lerDouble("Digite o valor para conversão (sem símbolo): ");
  print("~°" * 20); // imprime linha decorativa

  print("\n~°" * 20); // separador visual antes do menu
  print("1 - Reais (BRL)"); // opção 1: Real
  print("2 - Won (KRW)");   // opção 2: Won
  print("3 - Dólar (USD)"); // opção 3: Dólar
  print(""); // linha em branco para espaçamento

  // lê a opção de moeda de origem (inteiro 1..3)
  int moedaOrigem = lerInt("Escolha a moeda de origem (número): ");
  print("~°" * 20); // imprime linha decorativa

  // valida a opção de origem (deve estar entre 1 e 3)
  if (moedaOrigem < 1 || moedaOrigem > 3) {
    print("Por favor digite o número de alguma opção válida (1 a 3)."); // mensagem de erro
    print("~°" * 20); // decorativo
    return; // encerra o programa
  }

  print("\n~°" * 20); // separador visual antes do menu destino
  print("1 - Reais (BRL)"); // exibe novamente as opções para destino
  print("2 - Won (KRW)");
  print("3 - Dólar (USD)");
  print(""); // espaçamento

  // lê a opção de moeda de destino (inteiro 1..3)
  int moedaDestino = lerInt("Escolha a moeda de destino (número): ");
  print("~°" * 20); // imprime linha decorativa

  // valida a opção de destino (deve estar entre 1 e 3)
  if (moedaDestino < 1 || moedaDestino > 3) {
    print("Opção de destino inválida (1 a 3)."); // mensagem de erro
    return; // encerra o programa
  }

  // se origem e destino forem iguais, não precisa converter
  if (moedaOrigem == moedaDestino) {
    print("\nOrigem e destino são iguais; valor permanece ${valor.toStringAsFixed(2)}");
    print("~" * 20); // decorativo
    return; // encerra o programa
  }

  double resultado = 0.0; // variável para guardar o valor convertido
  String nomeOrigem = '', nomeDestino = ''; // variáveis para os códigos das moedas (BRL, USD, KRW)

  // === Conversões (cada bloco trata de Origem -> Destino diretamente) ===

  // Origem = BRL (1)
  if (moedaOrigem == 1 && moedaDestino == 2) {
    // BRL -> KRW
    resultado = valor * brlToKrw; // multiplica pelo fator BRL->KRW
    nomeOrigem = 'BRL'; // nome da moeda origem
    nomeDestino = 'KRW'; // nome da moeda destino
  } else if (moedaOrigem == 1 && moedaDestino == 3) {
    // BRL -> USD
    resultado = valor * brlToUsd; // multiplica pelo fator BRL->USD (inverso de USD->BRL)
    nomeOrigem = 'BRL';
    nomeDestino = 'USD';
  }
  // Origem = KRW (2)
  else if (moedaOrigem == 2 && moedaDestino == 1) {
    // KRW -> BRL
    resultado = valor * krwToBrl; // multiplica pelo fator KRW->BRL
    nomeOrigem = 'KRW';
    nomeDestino = 'BRL';
  } else if (moedaOrigem == 2 && moedaDestino == 3) {
    // KRW -> USD
    resultado = valor * krwToUsd; // multiplica pelo fator KRW->USD
    nomeOrigem = 'KRW';
    nomeDestino = 'USD';
  }
  // Origem = USD (3)
  else if (moedaOrigem == 3 && moedaDestino == 1) {
    // USD -> BRL
    resultado = valor * usdToBrl; // multiplica pelo fator USD->BRL
    nomeOrigem = 'USD';
    nomeDestino = 'BRL';
  } else if (moedaOrigem == 3 && moedaDestino == 2) {
    // USD -> KRW
    resultado = valor * usdToKrw; // multiplica pelo fator USD->KRW
    nomeOrigem = 'USD';
    nomeDestino = 'KRW';
  } else {
    // caso não se encaixe em nenhuma condição (proteção extra)
    print("\nNão foi possível realizar a conversão (combinação inválida).");
    return; // encerra o programa
  }

  // exibe o resultado formatado com duas casas decimais
  print("");
  print("${valor.toStringAsFixed(2)} $nomeOrigem = ${resultado.toStringAsFixed(2)} $nomeDestino");
  print("~" * 20); // imprime linha final decorativa
}
