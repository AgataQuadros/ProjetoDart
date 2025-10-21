import 'dart:io';

void main() {
  double soma = 0.0;
  while (true) {
    for (int i = 1; i <= 4; i++) {
      print("");
      print("~°" * 20);
      stdout.write("Digite a $iª nota: ");
      String entrada = stdin.readLineSync()!;

      // Valida cada entrada sendo ela um número
      if (double.tryParse(entrada) != null && entrada.isNotEmpty) {
        double nota = double.tryParse(entrada)!;
        soma += nota;
        // Se não for um número
      } else {
        print("Valor inválido!! Digite um número (ex: 7.5 ou 8.0)\n");
        print("~°" * 20);

        // Mantém o looping na mesma volta
        i--;
        continue;
      }
    }

    double media = soma / 4;
    // divide a soma pelo numero de notas,
    // no caso eu deixei um numero fixo de 4 por
    // ser um calculo imodificado

    String status = ""; // define a variavel status

    // validação que define o status do aluno
    if (soma < 40) {
      status = "Reprovou";
    } else if (soma < 50) {
      status = "esta de Recuperação";
    } else {
      status = "Passou";
    }

    print("");
    print("~" * 20);
    print("A média do aluno é: $media");
    print("O aluno $status");
    print("~°" * 20);

    stdout.write("Pressione enter para continuar ou 0 para sair: ");
    String continuar = stdin.readLineSync()!;
    print("~°" * 20);

    if (continuar == "0") {
      break;
    } else {
      continue;
    }
  }
}
