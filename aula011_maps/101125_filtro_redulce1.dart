void main() {
  Map<String, int> meuMap = {"a": 1, "b": 2, "c": 3, "d": 4};

  print("-" * 70);
  print("VARREDURA COM O MÉTODO REDUCE()");
  print("-" * 70);

  dynamic somatorio = meuMap.values.reduce((v, e) => v + e);
  // Como funciona o método reduce():
  // - O método percorre todos os valores do Map (no caso: 1, 2, 3, 4)
  // - O primeiro valor (1) é usado como inicial (v)
  // - Em cada iteração:
  //    - v = acumulador (resultado parcial)
  //    - e = elemento atual

  // Passo a passo:
  //  v=1, e=2 -> 1 + 2 = 3
  //  v=3, e=3 -> 3 + 3 = 6
  //  v=6, e=4 -> 6 + 4 = 10

  // Reultado final: 10

  print("Lista de valores: $meuMap");
  print("A soma dos valores é: $somatorio");
  print("-" * 70);
}