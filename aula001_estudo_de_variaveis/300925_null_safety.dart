void main(){
  // Esta variavel PODE ser nula (por conta do '?')
  String? nome;

  String saudacao = "Olá!";

  print("Exemplo 1: Variável nula");
  print(nome);


  print("\nExemplo 2 Atributo valor com a variável nula");
  nome = "Maria";
  print(nome);

  print("\nExamplo 3: Acessando Valor com !");
  String texto = nome!;
  print("Texto com nome: $texto");

  print("\nExemplo 4: Tentando Usar variável não inicializada");
  String? mensagem;

  try {
    String novaMensagem = mensagem!;
    print(novaMensagem);
  } catch (e){
    print("Erro : Você tentou usr um variável nula com !");
    print("Detalhe: $e");
  }
}