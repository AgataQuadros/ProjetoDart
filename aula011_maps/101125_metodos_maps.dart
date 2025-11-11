void main() {
  Map<String, int> mapLength = {"a": 1, "b": 2, "c": 3};
  print("O tamanho desse map é: ${mapLength.length}");

  dynamic mapTesteVazio = {};
  dynamic mapTesteCheio = {"a": 1};

  print("Map 'mapTesteVazio' esta vazio? ${mapTesteVazio.isEmpty}");
  print("Map 'mapTesteVazio' esta cheio? ${mapTesteVazio.isNotEmpty}");

  print("Map 'mapTesteCheio' esta vazio? ${mapTesteCheio.isEmpty}");
  print("Map 'mapTesteCheio' esta cheio? ${mapTesteCheio.isNotEmpty}");
  print("-" * 70);

  print(" ");
  print(" ");

  Map<String, int> mapChaveValor = {"a": 1, "b": 2, "c": 3};
  print("Chaves: ${mapChaveValor.keys}");
  print("Valores: ${mapChaveValor.values}");
  print("-" * 70);

  print(" ");
  print(" ");

  Map<String, int> mapContain = {"a": 1, "b": 2, "c": 3};
  print("Map contém a chave 'a'? ${mapContain.containsKey('a')}");
  print("Map contém a chave 'a'? ${mapContain.containsKey('d')}");

  print("Map contém a valor 1? ${mapContain.containsValue(1)}");
  print("Map contém a valor 1? ${mapContain.containsValue(4)}");
  print("-" * 70);

  print(" ");
  print(" ");

  Map<String, int> testeAbsent = {"a": 1, "b": 2, "c": 3};
  print("Map original: $testeAbsent");

  print("Adicionando o par chave/valor d:4");
  testeAbsent.putIfAbsent("d", () => 4);
  print(testeAbsent);

  print("Tenta adiconar par chave/valor d:5");
  testeAbsent.putIfAbsent("d", () => 5);
  print(testeAbsent);
  print("-" * 70);

  print(" ");
  print(" ");
  
  Map<String, int> testeRemove = {"a": 1, "b": 2, "c": 3};
  print("O amanho desse mapa é: ${mapLength.length}");

  print("Tnta ddiconar par chave/valor d:5");
  testeRemove.remove("b");
  print(testeRemove);
  print("-" * 70);

  print(" ");
  print(" ");
  
  Map<String, int> mapUpdate = {"a": 1, "b": 2, "c": 3};
  print("Map original: $mapUpdate");

  mapUpdate.update("b", (value) => value +1);
  print("Após atualizar 'b': $mapUpdate");

  mapUpdate.update("d", (value) => value +1, ifAbsent: () => 4);
  print("Após inclusão de  'd': $mapUpdate");
  print("-" * 70);
}
