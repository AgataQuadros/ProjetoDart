void main() {
  double media = calcularMedia(10, 10, 10, 10);
  double divisao = calcularDivisao(10, 5);

  print("média Aritimética");
  print("-" * 70);
  print("A média é: $media");
  print("A divisão é: $divisao");

  double percent = 5;
  double valor = 100;
  double percentual = calcularPorcentagem(percent, valor);

  print("$percent% de $valor = $percentual");
}

double calcularMedia(double n1, double n2, double n3, double n4) =>
    (n1 + n2 + n3 + n4) / 4;

double calcularDivisao(double n1, double n2) {
  if (n2 == 0) {
    print("Erro: Divisão por zero!");
    return 0;
  }
  return n1 / n2;
}

double calcularPorcentagem(double percent, double valor) =>
    (percent * valor) / 100;
