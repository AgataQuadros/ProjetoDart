import 'dart:io';

// função para ler um número decimal validado
double lerDouble(String mensagem) {
  double? valor;
  while (valor == null) {
    stdout.write(mensagem);
    String entrada = stdin.readLineSync()!;
    valor = double.tryParse(entrada.replaceAll(',', '.'));
    if (valor == null) {
      print("Valor inválido! Digite um número válido (ex: 1000.00)\n");
      print("~°" * 20);
    }
  }
  return valor;
}

void main() {
  print("=== CÁLCULO DE JUROS ===\n");

  // lê o capital inicial
  double capital = lerDouble("Digite o valor do capital inicial (R\$): ");

  // lê a taxa de juros (em porcentagem)
  double taxa = lerDouble("Digite a taxa de juros (% ao mês): ");

  // lê o tempo (em meses)
  double tempo = lerDouble("Digite o tempo (meses): ");

  // converte taxa percentual para decimal
  double taxaDecimal = taxa / 100;

  // cálculo de juros simples: J = C × i × t
  double jurosSimples = capital * taxaDecimal * tempo;

  // cálculo de montante (valor total com juros simples)
  double montanteSimples = capital + jurosSimples;

  // cálculo de juros compostos: M = C × (1 + i)^t
  // double montanteComposto = capital * (pow(1 + taxaDecimal, tempo));

  // calcula o valor dos juros compostos
  // double jurosComposto = montanteComposto - capital;

  print("\n=== RESULTADOS ===");
  print("Juros Simples: R\$ ${jurosSimples.toStringAsFixed(2)}");
  print("Montante (Simples): R\$ ${montanteSimples.toStringAsFixed(2)}");
  // print("\nJuros Compostos: R\$ ${jurosComposto.toStringAsFixed(2)}");
  // print("Montante (Composto): R\$ ${montanteComposto.toStringAsFixed(2)}");
}
