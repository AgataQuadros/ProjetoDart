import 'dart:io';

// função para ler um número decimal validado
double lerDouble(String mensagem) {
  double? valor;
  while (valor == null) {
    stdout.write(mensagem);
    String entrada = stdin.readLineSync()!;
    valor = double.tryParse(entrada.replaceAll(',', '.'));
    if (valor == null) {
      print("Valor inválido! Digite um número válido (ex: 32.5)\n");
      print("~°" * 20);
    }
  }
  return valor;
}

void main() {
  print("=== CONVERSOR DE TEMPERATURAS ===\n");

  // mostra as opções de conversão
  print("Escolha a conversão desejada:");
  print("1 - Celsius para Fahrenheit");
  print("2 - Fahrenheit para Celsius");

  stdout.write("\nDigite sua opção (1 ou 2): ");
  String opcao = stdin.readLineSync()!;

  // verifica qual opção o usuário escolheu
  if (opcao == "1") {
    // lê a temperatura em Celsius
    double celsius = lerDouble("Digite a temperatura em Celsius: ");
    // fórmula: F = C × 9/5 + 32
    double fahrenheit = celsius * 9 / 5 + 32;
    print("Resultado: ${celsius.toStringAsFixed(2)} °C = ${fahrenheit.toStringAsFixed(2)} °F");
  } else if (opcao == "2") {
    // lê a temperatura em Fahrenheit
    double fahrenheit = lerDouble("Digite a temperatura em Fahrenheit: ");
    // fórmula: C = (F - 32) × 5/9
    double celsius = (fahrenheit - 32) * 5 / 9;
    print("Resultado: ${fahrenheit.toStringAsFixed(2)} °F = ${celsius.toStringAsFixed(2)} °C");
  } else {
    print("Opção inválida! Encerrando programa.");
  }
}
