void main() {
  Map<String, int> meuMap = {"a": 1, "b": 2, "c": 3};

  // 1. Usando entries -> percorre pares chave/valor diretamente
  print("-" * 70);
  print("VARREDURA COM entries");
  print("-" * 70);
  for (var entrada in meuMap.entries) {
    String chave = entrada.key; // Acessa a chave
    int valor = entrada.value; // Acessa o valor
    print("$chave: $valor");
  }
  print("-" * 70);

  // 2. Usando keys -> percorre apenas as chaves
  // Podemos recuperar o valor acessando o Map com a chave
  Map<String, dynamic> meuMap2 = {"nome": "John Doe", "nascimento": 1970};

  print("VARREDURA COM keys");
  print("-" * 70);
  for (String chave in meuMap2.keys) {
    dynamic valor = meuMap2[chave]; // Busca o valor correspondente à chave
    print("$chave: $valor");
  }
  print("-" * 70);

  // 3. Usando values -> percorre apenas os valores do Map
  Map<String, dynamic> meuMap3 = {"nome": "John Doe", "nascimento": 1970};

  print("VARREDURA COM values");
  print("-" * 70);
  for (var valor in meuMap3.values) {
    print(valor);
  }
  print("-" * 70);
}