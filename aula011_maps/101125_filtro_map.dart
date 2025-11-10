void main() {
  print("=" * 70);
  print("EXEMPLO ORIGINAL: VARREDURA COM O MÉTODO mao()");
  print("=" * 70);

  var meuMap = {"a": 1, "b": 2, "c": 3};

  var resultado = meuMap.entries.map(
    (entrada) => "${entrada.key} : ${entrada.value}",
  );

  print("Map transformado em String: ${resultado.join(", ")}");
  print("=" * 70);

  print("EXEMPLO 1: ALTERANDO VALORES COM map()");
  print("=" * 70);

  var precos = {"banana": 2.5, "maçã": 3.0, "laranja": 2.0};

  var precosComDesconto = precos.map((chave, valor) {
    var novoValor = valor * 0.9;
    return MapEntry(chave, novoValor);
  });

  print("Original: $precos");
  print("Original: $precosComDesconto");
  print("=" * 70);

  print("EXEMPLO 2: CONVERTENDO MAP EM LISTA DE STRINGS");
  print("=" * 70);

  var estoque = {"caneta": 50, "lápis": 80, "borracha": 25};

  var descricoes = estoque.entries.map(
    (item) => "Temos ${item.value} unidadades de ${item.key}.",
  );

   print(descricoes.toList());
  print("=" * 70);
}
