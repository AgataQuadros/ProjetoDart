void main() {
  print("=" * 70);
  print("EXEMPLO DE WHERE EM MAPA");
  print("=" * 70);

  Map<String, int> pessoas = {
    "Alice": 20,
    "Bob": 17,
    "Carol": 25,
    "Dave": 16,
    "Eve": 30,
  };

  Map<String, int> pessoasMaiores = Map.fromEntries(
    pessoas.entries.where((element) => element.value > 18),
  );

  print(pessoasMaiores);
  print("=" * 70);

}
