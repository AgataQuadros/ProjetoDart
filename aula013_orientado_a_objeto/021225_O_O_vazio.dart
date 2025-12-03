import 'dart:io';

class Pessoa {
  // Atributo "nome" do tipo String
  //(não pode ser nulo, sempre terá valor válido)
  String nome;

  // Atributo "idade" do tipo int
  //(não pode ser nulo, sempre terá valor válido)
  int idade;

  // Construtor padrão com valores seguros
  Pessoa({this.nome = "Não Informado", this.idade = 0});

  // Método para ler os dados da pessoa
  void lerDados() {
    stdout.write("Digite o nome:");
    // lê a linha digitada (String? porque pode vir a ser nula)
    String? entradaNome = stdin.readLineSync();

    // Se a entrada fo nula ou vazia, matém  "Não informado"
    if (entradaNome != null && entradaNome.isNotEmpty) {
      nome = entradaNome;
    }

    stdout.write("Digite a idade:");
    // lê a linha digitada (String? porque pode vir a ser nula)
    String? entradaIdade = stdin.readLineSync();

    int? idadeConvertida = int.tryParse(entradaIdade ?? '');

    if (idadeConvertida != null) {
      idade = idadeConvertida;
    }
  }

  void exibirDados() {
    print("-" * 70);
    print("Nome: $nome");
    print("idade: $idade");
    print("-" * 70);
  }
}

void main(){
  var pessoa = Pessoa();
  pessoa.lerDados();
  pessoa.exibirDados();
}