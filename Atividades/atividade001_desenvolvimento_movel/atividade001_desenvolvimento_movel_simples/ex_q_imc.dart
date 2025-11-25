import 'dart:io';

// função para ler um número decimal validado
double lerDouble(String mensagem) {
  double? valor;
  while (valor == null) {
    stdout.write(mensagem);
    String entrada = stdin.readLineSync()!;
    valor = double.tryParse(entrada.replaceAll(',', '.'));
    if (valor == null) {
      print("Valor inválido! Digite um número válido (ex: 70.5)\n");
      print("~°" * 20);
    }
  }
  return valor;
}

void main() {
  print("=== CÁLCULO DE IMC COMPLETO ===\n");

  // lê o peso em kg
  double peso = lerDouble("Digite seu peso (kg): ");

  // lê a altura em metros
  double altura = lerDouble("Digite sua altura (m): ");

  // calcula o IMC (peso dividido pela altura ao quadrado)
  double imc = peso / (altura * altura);

  print("\nSeu IMC é: ${imc.toStringAsFixed(2)}");

  // verifica a classificação do IMC
  if (imc < 18.5) {
    print("Classificação: Abaixo do peso");
  } else if (imc < 24.9) {
    print("Classificação: Peso normal");
  } else if (imc < 29.9) {
    print("Classificação: Sobrepeso");
  } else if (imc < 34.9) {
    print("Classificação: Obesidade grau I");
  } else if (imc < 39.9) {
    print("Classificação: Obesidade grau II");
  } else {
    print("Classificação: Obesidade grau III (mórbida)");
  }
}
