class Pessoa {
  // Declara do atributo "nome" do tipo String
  final String nome;
  // Declara do atributo "idade" do tipo int
  final int idade;

  // Constructor da classe Pessoa

  Pessoa({
    // Parâmetro obrigatório, garante inicialização segura
    required this.nome,
    required this.idade,
  });

  // Método para exibir os dados da pessoa
  void exibirDados() {
    print("-" * 70);
    print("Nome: $nome");
    print("idade: $idade");
    print("-" * 70);
  }
}

void main() {
  // Criação de uma instância(objeto) da classe Pessoa com o contructor
  Pessoa pessoa1 = Pessoa(nome: "João Ninguem", idade: 25);
  // chama do método exibirDados() da instância pessoa1
  pessoa1.exibirDados();

  // Criação de uma instância(objeto) da classe Pessoa com o contructor
  Pessoa pessoa2 = Pessoa(nome: "Maria Ninguem", idade: 30);
  // chama do método exibirDados() da instância pessoa2
  pessoa2.exibirDados();
}