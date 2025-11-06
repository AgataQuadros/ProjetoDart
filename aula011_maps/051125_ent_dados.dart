import 'dart:io';

void main() {
  List<Map<String, dynamic>> pessoas = [];

  bool continuar = true;

  while (continuar) {
    stdout.write("digite um Nome: ");
    String? nome = stdin.readLineSync();

    if (nome == null || nome.trim().isEmpty) {
      print("Entrada invalida! Digite Algo!");
      continue;
    }


    stdout.write("digite um Idade: ");
    String? entradaIdade = stdin.readLineSync();
    int? idade = int.tryParse(entradaIdade ?? '');

    if (idade == null || idade <= 0) {
      print("Entrada invalida! Digite Algo!");
      continue;
    }


    pessoas.add({'nome': nome.trim(), 'idade' : idade});
    print("Pessoa Adidicionada com Sucesso!");


    stdout.write("Deseja Cadastrar Outra Pessoa? (s/n): ");
      String? resposta = stdin.readLineSync();

      if (resposta == null || resposta.isEmpty) {
        print(" ");
        print('Resposta inválida!');
        print("~°" * 20);
        continue;
      }

      resposta = resposta.toLowerCase();

      if (resposta == 'n') {
        continuar = false; // Sai do laço e volta pro início da calculadora
      } else {
        print(" ");
        print('Opção inválida! Digite "s" ou "n".');
        print("~°" * 20);
      }

      if(pessoas.isEmpty){
        print("\n Nenhuma pessoa cadastrada");
      } else {
        print("\n=== Lista de Pessoas Cadastradas ===");
        for (int i = 0; i < pessoas.length; i++) {
          var pessoa = pessoas[i];
          print("${i + 1}. Nome: ${pessoa['nome']}, Idade: ${pessoa['idade']}");
        }
      }

      print("\nPrograma Finalizado");
  }
}
