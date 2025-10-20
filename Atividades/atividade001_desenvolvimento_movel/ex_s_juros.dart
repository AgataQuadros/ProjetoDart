import 'dart:io';

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
  // lê o capital inicial
  double capital = lerDouble("Digite o valor do capital inicial (R\$): ");

  print(" ");
  // lê a taxa de juros (em porcentagem)
  double taxa = lerDouble("Digite a taxa de juros (% ao mês): ");
  print(" ");
  // lê o tempo (em meses)
  double tempo = lerDouble("Digite o tempo (meses): ");
  print("~" * 20);

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

  if (capital == 0|| taxa == 0 || tempo == 0) {
    print("~°" * 20);
    print("O calculo não é possivel pois não a oque clcular");
    print("Reinicie-o e tente novamente com valores diferentes");
    print("~°" * 20);
    return;
  }

  print("");
  print("Juros Simples: R\$ ${jurosSimples.toStringAsFixed(2)}");
  print("Montante (Simples): R\$ ${montanteSimples.toStringAsFixed(2)}");
  // print("\nJuros Compostos: R\$ ${jurosComposto.toStringAsFixed(2)}");
  // print("Montante (Composto): R\$ ${montanteComposto.toStringAsFixed(2)}");
}
