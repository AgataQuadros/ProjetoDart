void main() {
  print(" ");
  print("~°" * 20);
  print("EXEMPLO DE USO DO WHERE() COM STRING");
  print("~" * 20);

  List<String> nomes = ["Alice", "Ana", "Beatriz", "Bruna", "Clara", "Caio"];

  List<String> nomesComA = nomes.where((nome) => nome.startsWith("A")).toList();

  print('Nova lista de nomes que começam com A: $nomesComA');
  print("~" * 20);

  List<String> nomesLongos = nomes.where((nome) => nome.length > 4).toList();

  print('Nova lista de nomes com mais de 4 caracteres: $nomesLongos');
  print("~°" * 20);
}
