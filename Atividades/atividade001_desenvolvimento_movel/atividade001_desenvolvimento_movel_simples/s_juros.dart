import 'dart:io';
import 'dart:math';

void main() {
  // variável de controle do loop
  bool continuar = true;
  // loop principal do programa
  while (continuar) {
    print("");
    print("~°" * 20);
    print("CÁLCULO DE JUROS");
    print("~°" * 20);
    print("");

    // lê o capital inicial
    stdout.write("Digite o valor inicial (capital): ");
    String entradaCapital = stdin.readLineSync()!;
    double? capital = double.tryParse(entradaCapital.replaceAll(',', '.'));
    print("~" * 20);

    // valida se o capital é válido
    if (capital == null || capital.isNegative) {
      print("");
      print("Valor inválido! Digite um número positivo.");
      print("~°" * 20);
      continue; // volta para o início do loop
    }

    // lê a taxa de juros
    print("");
    stdout.write("Digite a taxa de juros (% ao mês): ");
    String entradaTaxa = stdin.readLineSync()!;
    double? taxa = double.tryParse(entradaTaxa.replaceAll(',', '.'));
    print("~" * 20);

    // valida se a taxa é válida
    if (taxa == null || taxa.isNegative) {
      print("");
      print("Taxa inválida! Digite um número maior ou igual a 0.");
      print("~°" * 20);
      continue; // volta para o início do loop
    }

    // lê o tempo (em meses)
    print("");
    stdout.write("Digite o tempo (em meses): ");
    String entradaTempo = stdin.readLineSync()!;
    int? tempo = int.tryParse(entradaTempo);
    print("~" * 20);

    // valida se o tempo é válido
    if (tempo == null || tempo.isNegative) {
      print("");
      print("Tempo inválido! Digite um número inteiro positivo.");
      print("~°" * 20);
      continue; // volta para o início do loop
    }

    // converte taxa percentual para decimal
    double taxaDecimal = taxa / 100;

    // cálculo de juros simples: J = C × i × t
    double jurosSimples = capital * taxaDecimal * tempo;

    // cálculo de montante (valor total com juros simples)
    double montanteSimples = capital + jurosSimples;

    // cálculo de juros compostos: M = C × (1 + i)^t
    double montanteComposto = capital * (pow(1 + taxaDecimal, tempo));

    // calcula o valor dos juros compostos
    double jurosComposto = montanteComposto - capital;

    print(" ");
    print("Juros Simples: R\$ ${jurosSimples.toStringAsFixed(2)}");
    print(" ");
    print("~" * 20);
    print("Montante (Simples): R\$ ${montanteSimples.toStringAsFixed(2)}");
    print(" ");
    print("~" * 20);
    print("Juros Compostos: R\$ ${jurosComposto.toStringAsFixed(2)}");
    print(" ");
    print("~" * 20);
    print("Montante (Composto): R\$ ${montanteComposto.toStringAsFixed(2)}");
    print("~°" * 20);

    print(" ");
    print("~°" * 20);
    stdout.write("Deseja realizar outro cálculo? (s/n): ");
    String resposta = stdin.readLineSync()!.trim().toLowerCase();
    print("~" * 20);

    if (resposta != 's') {
      continuar = false; // sai do loop
      print("");
      print("Obrigado por usar! Encerrando o programa... ");
      print("~°" * 20);
    } else {
      print("");
    }
  }
}
