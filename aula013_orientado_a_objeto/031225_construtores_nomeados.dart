import 'dart:io';

// Classe Produto com construtor padrão e construtores nomeados
class Produto {
  String nome;
  double preco;

  // COnstrutor padraão: receber nome e preço digitados pelo usuário
  Produto(this.nome, this.preco);

  // Construtor nomeado: cria produto gratuito
  // O usiário imforma só o nome e o preço é automaticamente zero
  Produto.gratuito(this.nome) : preco = 0.0;

  // Construtor nemeado: cria um produto com valores fixos
  Produto.oferta() : nome = "PlayStation 5 Pro", preco = 1000;

  // Método para exibir os dados do produto
  void exibir() {
    print("\n---dados do Produto");
    print("Nome: $nome");
    print("Preço: R\$ $preco");
  }

  void main() {
    // entrada de dados
    stdout.write("Dogite o nome do produto:");
    String nome = stdin.readLineSync() ?? "Desconhecido";

    // Pergunta o preço do produto
    stdout.write("Dogite o preço do produto:");
    double preco = double.tryParse(stdin.readLineSync() ?? "") ?? 0.0;

    // Criação de objetos usando diferentes construtores

    // Produto criado com o construtor padrão (nome + preco)
    Produto p1 = Produto(nome, preco);

// Produto gratuito usando construtos nomeado
    Produto p2 = Produto.gratuito("Amostra grátis");

    // Produto padrão usando construtor nomeado
    Produto p3 = Produto.oferta();

    // Eibir Resultados

    print("\nProduto criado manualmente");
    p1.exibir();

    print("\nProduto gratuito");
    p2.exibir();

    print("\nProduto em oferta");
    p3.exibir();
  }
}
