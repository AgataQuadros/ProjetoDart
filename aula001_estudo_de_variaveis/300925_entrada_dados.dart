import 'dart:io';

void main() {
  stdout.write("Entre com seu nome:");

  String? nome = stdin.readLineSync();

  nome = (nome == null || nome.isEmpty) ? "Não informado" : nome;


  stdout.write("Data de Nascimento: ");

  String? inputIdade = stdin.readLineSync();

  int? idade = (inputIdade != null && inputIdade.isNotEmpty)
      ? int.tryParse(inputIdade)
      : null;

  if (idade == null) {
    print("Idade inválida! Digite um número válido.");
    return;
  }

  print(" ");
  print("Seu Nome é: $nome");
  print("Sua Data de Nascimento é: $idade");
}