class Animal {
  // Definição da classe Animal
  String nome;
  int idade;
  double peso;
  String raca;

  // Constructor da classe Animal na forma curta
  Animal(this.nome, this.idade, this.peso, this.raca);

  // Método void para exibir informações do animal
  void exibirInformacoes() {
    print("-" * 70);
    print("Nome: $nome");
    print("idade: $idade");
    print("Peso: $peso");
    print("Raça: $raca");
    print("-" * 70);
  }

  // Método com retorno para calcular a idade em meses
  int calcularIdadeMeses() {
    return idade * 12;
  }
}

void main() {
  //instancionando um animal
  Animal animal = Animal("Rex", 3, 10.5, "Labrador");
  // Chamada do método exibirInformacoes()
  animal.exibirInformacoes();

  // Chamda do método calcularIdadeMeses()
  int idadeMeses = animal.calcularIdadeMeses();
  print("Idade em meses: $idadeMeses");
  print("-" * 70);
}
