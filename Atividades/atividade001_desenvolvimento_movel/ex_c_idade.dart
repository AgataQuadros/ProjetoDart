import "dart:io";

bool valido = true;

void main() {
  while (true) {
    print("~°" * 20);
    stdout.write("Digite a sua data de nascimento (AAAA-MM-DD): ");
    String? entrada = stdin.readLineSync();
    entrada = entrada!.replaceAll(" ", ""); // remove espaços da entrada
    print("~°" * 20);

    // verifica se a entrada não ta vazia
    if (entrada.isNotEmpty) {
      // verifica se a entrada tem exatamente 10 caracteres
      if (entrada.length == 10) {
        // validação de formatação da data
        // varre os caracteres da entrada
        for (int i = 0; i < entrada.length; i++) {
          // se for o quinto ou oitavo caracter verifica se é um hífen
          if (i == 4 || i == 7) {
            if (entrada[i] == "-") {
              continue;
            } else {
              valido = false;
              break;
            }
            // se for outro caracter verifica se é um número
          } else {
            if (int.tryParse(entrada[i]) != null) {
              continue;
            } else {
              valido = false;
              break;
            }
          }
        }

        // Verifica se passou na validação de modelo
        if (valido) {
          DateTime dataAtual = DateTime.now(); // pega a data da maquina
          DateTime dataNascimento = DateTime.parse(
            entrada,
          ); // converte entrada em data

          // verifica se a data inserida é anterior a atual
          if (dataNascimento.isBefore(dataAtual)) {
            // cálculos da idade
            Duration diferenca = dataAtual.difference(dataNascimento);
            // diferença entre dois objetos dateTime = objeto Duration
            int anos = diferenca.inDays ~/ 365;
            // Duration.inDays converte objeto Duration para dias

            print("");
            print("Você tem $anos anos de idade");
            print("~" * 20);

          } else {
            // resposta se a data for depois da data atual
            print("Por favor digite uma data anterior a atual!");
            print("~°" * 20);
            continue;
          }
        } else {
          // resposta se o modelo inválido
          print("Por favor digite uma data no modelo AAAA-MM-DD");
          print("~°" * 20);
          valido = true;
          continue;
        }
      } else {
        // resposta se a quantidade de caracteres inválida
        print("Por favor digite apenas 10 caracteres no modelo AAAA-MM-DD!");
        print("~°" * 20);
        continue;
      }
    } else {
      // resposta se a entrada vazia
      print("Por favor digite algo!");
      print("~°" * 20);
      continue;
    }
  }
}