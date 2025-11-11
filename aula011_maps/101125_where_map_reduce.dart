void main() {
  print("=" * 70);
  print("EXEMPLO DE WHERE(), MAP() E REDUCE() NA FILTRAGEM");
  print("=" * 70);

  Map<String, int> numeros = {
    'um': 1,
    'dois': 2,
    'tres': 3,
    'quatro': 4,
    'cinco': 5,
  };

  int soma = numeros.values
      .where((num) => num % 2 == 0)
      .map((num) => num * 2)
      .reduce((soma, num) => soma * num);

  print("Resultado final: $soma");
  print("=" * 70);

  print("=" * 70);
  print("EXEMPLO DE WHERE(), MAP() E REDUCE() COM STRINGS");
  print("=" * 70);

  Map<String, int> pessoas = {
    "Alice": 20,
    "Bob": 17,
    "Carol": 25,
    "Dave": 16,
    "Eve": 18,
  };

  String nomesAdultos = pessoas.entries
      .where((entrada) => entrada.value > 18)
      .map((entrada) => entrada.key.toUpperCase())
      .reduce((acumulador, nome) => "$acumulador, $nome");

  print("Nome das pessoas adultas: $nomesAdultos");
  print("=" * 70);
}
