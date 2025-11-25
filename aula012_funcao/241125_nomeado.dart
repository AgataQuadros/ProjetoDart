import "dart:io";

void main() {
  while (true) {
    String? nomeFuncionario;
    String? cargoFuncionario;
    double? salarioFuncionario;

    print("-" * 70);

    // Entrada do nome
    stdout.write("Nome do funcionário: ");
    nomeFuncionario = stdin.readLineSync();
    if (nomeFuncionario == null || nomeFuncionario.isEmpty) {
      print("Entrada inválida!");
      continue;
    }

    // Entrada do cargo
    stdout.write("Cargo ocupado: ");
    cargoFuncionario = stdin.readLineSync();
    if (cargoFuncionario == null || cargoFuncionario.isEmpty) {
      print("Entrada iválida!");
      continue;
    }

    // Entrada do salário
    stdout.write("Salário  funcionário: ");
    var entradaSalario = stdin.readLineSync();
    if (entradaSalario != null && entradaSalario.isNotEmpty) {
      salarioFuncionario = double.tryParse(entradaSalario);
    }
    if (salarioFuncionario == null) {
      print("Entrada inválida!");
      continue;
    }
    print("=" * 70);

    // Exibe cadastro
    exibirCadastro(
      funcionario: nomeFuncionario,
      cargo: cargoFuncionario,
      salario: salarioFuncionario,
    );

    // Perguntar se deseja continuar, validando resposta
    while (true) {
      stdout.write("Deseja cadastrar outro funcionário? (s/n): ");
      String? resposta = stdin.readLineSync();
      if (resposta == null) continue;

      resposta = resposta.toLowerCase();
      if (resposta == "s") {
        break; // continua o loop principal
      } else if (resposta == "n") {
        print("Fim do programa!");
        return; // encerra o programa
      } else {
        print("Resposta inválida! Digite 's' para sim ou 'n' para não.");
      }
    }
  }
}

void exibirCadastro({
  required String funcionario,
  required String cargo,
  required double salario,
}) {
  print("-" * 70);
  print("Nome do funcionário: $funcionario");
  print("Cargo: $cargo");
  print("Salário: $salario");
  print("-" * 70);
}