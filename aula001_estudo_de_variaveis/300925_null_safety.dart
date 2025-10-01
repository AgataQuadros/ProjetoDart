void main() {
  // Esta variavel PODE ser nula (por conta do '?')
  String? nome;

  // Esta variável NÃO pode ser nula (sem ?)
  String saudacao = "Olá!";

  print("Exemplo 1: Variável nula");
  print(nome); // Saída: null (tudo be,, ela pode ser nula)

  print("\nExemplo 2 Atributo valor com a variável nula");
  nome = "Maria";
  print(nome); // Saída: Maria

  print("\nExamplo 3: Acessando Valor com !");
  // nome agora tem valor, então podemos usar nome!
  String texto = nome!; // Usando o operador ! para "tirar" o ? do tipo
  print("Texto com nome: $texto");

  print("\nExemplo 4: Tentando Usar variável não inicializada");
  // Vamos criar uma variável que PODE ser nula
  String? mensagem;

  // Agora vamos tentar forçar ela com !
  try {
    String novaMensagem = mensagem!; // Aqui vai dar erro!
    print(novaMensagem);
  } catch (e) {
    print("Erro : Você tentou usr um variável nula com !");
    print("Detalhe: $e");
  }
}
