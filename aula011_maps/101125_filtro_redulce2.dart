void main(){
  Map<String, String> palavras = {
    "p1": "Dart",
    "p2": "é",
    "p3": "uma",
    "p4": "linguagem",
    "p5": "incrível",
  };

  print("-" * 70);
  print("CONCATENANDO STRINGS COM O MÉTODO REDUCE()");
  print("-" * 70);

  String frase = palavras.values.reduce((v, e) => "$v $e");
  // Como funciona o método reduce():
  // - O método percorre todos os valores do Map
  // (no caso: "Dart", "é", "uma", "Linguagem", "incrível")
  // - O primeiro valor ("Dart") é usado como inicial (v)
  // - Em cada iteração:
  //    v = acumulador (resultado parcial)
  //    e = elemento atual
  // - A função concatena v e e com um espaço entre eles

  // Passo a passo:
  //  v="Dart", e="é" -> "Dart é"
  //  v="Dart é", e="uma" -> "Dart é uma"
  //  v="Dart é uma", e="linguagem" -> "Dart é uma linguagem"
  //  v="Dart é uma linguagem", e="incrível" -> "Dart é uma linguagem incrível"

  // Resultado final: "Dart é uma linguagem incrível"

  print("Frase completa: $frase");
  print("-" * 70);
}