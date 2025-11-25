void main() {
  print("-" * 70);
  print("EXEMPLO DE FUNÇÃO ANÔNIMA: BÁSICA");
  print("-" * 70);

  List<int> numeros = [1, 2, 3, 4, 5];

  numeros.forEach((numero) {
    print(numero * 2);
  });

  print("-" * 70);
  print("EXEMPLO DE FUNÇÃO ANÔNIMA: INTERMEDIARIA");
  print("-" * 70);

  var lista1 = [1, 2, 3, 4, 5];

  var novaLista1 = lista1.map((numero) => numero * 2).toList();
  print(novaLista1);

  print("-" * 70);
  print("EXEMPLO DE FUNÇÃO ANÔNIMA: AVANÇADA");
  print("-" * 70);

  var lista2 = [1, 2, 3, 4, 5];

  var novaLista2 = lista2.where((numero) {return numero.isOdd;}).map((numero) => numero * 2).toList();

  print(novaLista2);
}
