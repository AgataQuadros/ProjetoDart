void main() {
  print(" ");
  print("~°" * 20);
  print("~" * 20);

  print(" ");
  print("~°" * 20);
  print("LISTA DE MÉTODOS PARA LISTAS");
  print("~" * 20);

  print(" ");
  List<int> listaInteiros = [1, 2, 3];
  print("~" * 20);
  print("Lista original: $listaInteiros");
  listaInteiros.add(4);
  print("Lista Nova: $listaInteiros");
  print("~" * 20);
  print(" ");

  print(" ");
  List<String> listaFrutas = ["banana", "maçã", "pêra"];
  print("~" * 20);
  print("Lista original: $listaFrutas");
  listaFrutas.addAll(["uva", "goiaba", "manga"]);
  print("Lista Nova: $listaFrutas");
  print("~" * 20);
  print(" ");

  print(" ");
  List<String> listaNomes = ["João", "Maria", "José"];
  print("~" * 20);
  print("Lista original: $listaNomes");
  listaNomes.remove("João");
  print("Lista Nova: $listaNomes");
  print("~" * 20);
  print(" ");

  print(" ");
  List<double> listaDouble = [1.1, 2.2, 3.3];
  print("~" * 20);
  print("Lista original: $listaDouble");
  listaDouble.removeAt(1);
  print("Lista Nova: $listaDouble");
  print("~" * 20);
  print(" ");

  print(" ");
  List<String> listaArtistas = ["Fernanda Torres", "Paulo José", "Raul Cortez"];
  print("~" * 20);
  print("Lista original: $listaArtistas");
  listaArtistas.insert(2, "Grande Otelo");
  print("Lista Nova: $listaArtistas");
  print("~" * 20);

  print(" ");
  List<int> listaNumeros = [3, 4, 5];
  print("~" * 20);
  print("Lista original: $listaNumeros");
  listaNumeros.insertAll(0, [1, 2]);
  print("Lista Nova: $listaNumeros");
  print("~" * 20);

  print(" ");
  List<String> listaVogais = ["a", "e", "i", "o", "u", "a", "e", "i", "o", "u"];
  print("~" * 20);
  print(listaVogais);
  print("A 1ª ocorrência da vogal i: índice ${listaVogais.indexOf("i")}");
  print("~" * 20);

  print(" ");
  List<String> listaCarros = ["Fusca", "Gol", "Ferrari", "Gol"];
  print("~" * 20);
  print(listaCarros);
  print("A ultima ocorrencia do Gol: índice ${listaCarros.lastIndexOf("Gol")}");
  print("~" * 20);

  print(" ");
  List<int> lista= [1,2,3,4,5];
  print("~" * 20);
  print("Lista original: $lista");
  print("Sublista gerada: ${lista.sublist(1, 3)}");
  print("~" * 20);

  print(" ");
  List<String> listaVogais2 = ["u", "o", "i", "e", "a"];
  print("~" * 20);
  print("Lista original: $listaVogais2");
  listaVogais2.sort();
  print("Lista Nova: $listaVogais2");
  print("~" * 20);
  
  // print(" ");
  // List<String> listaArtistas = ["Fernanda Torres", "Paulo José", "Raul Cortez"];
  // print("~" * 20);
  // print("Lista original: $listaArtistas");
  // listaArtistas.insert(4, "Grande Otelo");
  // print("Lista Nova: $listaArtistas");
  // print("~" * 20);

  // print(" ");
  // List<String> listaArtistas = ["Fernanda Torres", "Paulo José", "Raul Cortez"];
  // print("~" * 20);
  // print("Lista original: $listaArtistas");
  // listaArtistas.insert(4, "Grande Otelo");
  // print("Lista Nova: $listaArtistas");
  // print("~" * 20);
}
