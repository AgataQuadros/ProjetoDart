import 'dart:io';

// lê um inteiro (para escolher opções)
int lerInt(String mensagem) {
  int? numero;
  while (numero == null) {
    stdout.write(mensagem);
    String entrada = stdin.readLineSync()!;
    numero = int.tryParse(entrada);
    if (numero == null) {
      print("Valor inválido!! Digite um número inteiro\n");
      print("~°" * 20);
    }
  }
  return numero;
}

// lê um número decimal (double) para valores monetários
double lerDouble(String mensagem) {
  double? valor;
  while (valor == null) {
    stdout.write(mensagem);
    String entrada = stdin.readLineSync()!;
    valor = double.tryParse(entrada.replaceAll(',', '.'));
    if (valor == null) {
      print("Valor inválido!! Digite um número (ex: 1234.56)\n");
      print("~°" * 20);
    }
  }
  return valor;
}

void main() {
  // Taxas de exemplo (atualize conforme quiser)
  const double usdToBrl = 5.60; // 1 USD = 5.60 BRL
  const double usdToKrw = 1400.0; // 1 USD = 1400 KRW
  const double brlToKrw = 260.76; // 1 BRL = 260.76 KRW

  // taxas inversas calculadas a partir das acima
  final double brlToUsd = 1 / usdToBrl;
  final double krwToUsd = 1 / usdToKrw;
  final double krwToBrl = 1 / brlToKrw;

  print("~°" * 20);

  // valor (agora aceita decimais)
  double valor = lerDouble("Digite o valor para conversão (sem símbolo): ");
  print("~°" * 20);

  print("\n~°" * 20);
  print("1 - Reais (BRL)");
  print("2 - Won (KRW)");
  print("3 - Dólar (USD)");
  print("");
  int moedaOrigem = lerInt("Escolha a moeda de origem (número): ");
  print("~°" * 20);

  // validação correta
  if (moedaOrigem < 1 || moedaOrigem > 3) {
    print("Por favor digite o número de alguma opção válida (1 a 3).");
    print("~°" * 20);
    return;
  }

  print("\n~°" * 20);
  print("1 - Reais (BRL)");
  print("2 - Won (KRW)");
  print("3 - Dólar (USD)");
  print("");
  int moedaDestino = lerInt("Escolha a moeda de destino (número): ");
  print("~°" * 20);

  if (moedaDestino < 1 || moedaDestino > 3) {
    print("Opção de destino inválida (1 a 3).");
    return;
  }

  // se mesma moeda
  if (moedaOrigem == moedaDestino) {
    print(
      "\nOrigem e destino são iguais; valor permanece ${valor.toStringAsFixed(2)}",
    );
    print("~" * 20);
    return;
  }

  double resultado = 0.0;
  String nomeOrigem = '', nomeDestino = '';

  // === Conversões (condições com origem -> destino, sem inverter) ===
  // Origem = BRL
  if (moedaOrigem == 1 && moedaDestino == 2) {
    // BRL -> KRW
    resultado = valor * brlToKrw;
    nomeOrigem = 'BRL';
    nomeDestino = 'KRW';
  } else if (moedaOrigem == 1 && moedaDestino == 3) {
    // BRL -> USD
    resultado = valor * brlToUsd;
    nomeOrigem = 'BRL';
    nomeDestino = 'USD';
  }
  // Origem = KRW
  else if (moedaOrigem == 2 && moedaDestino == 1) {
    // KRW -> BRL
    resultado = valor * krwToBrl;
    nomeOrigem = 'KRW';
    nomeDestino = 'BRL';
  } else if (moedaOrigem == 2 && moedaDestino == 3) {
    // KRW -> USD
    resultado = valor * krwToUsd;
    nomeOrigem = 'KRW';
    nomeDestino = 'USD';
  }
  // Origem = USD
  else if (moedaOrigem == 3 && moedaDestino == 1) {
    // USD -> BRL
    resultado = valor * usdToBrl;
    nomeOrigem = 'USD';
    nomeDestino = 'BRL';
  } else if (moedaOrigem == 3 && moedaDestino == 2) {
    // USD -> KRW
    resultado = valor * usdToKrw;
    nomeOrigem = 'USD';
    nomeDestino = 'KRW';
  } else {
    print("\nNão foi possível realizar a conversão (combinação inválida).");
    return;
  }

  print("");
  print(
    "${valor.toStringAsFixed(2)} $nomeOrigem = ${resultado.toStringAsFixed(2)} $nomeDestino",
  );
  print("~" * 20);
}
