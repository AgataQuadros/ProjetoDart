import 'dart:io';

class Compromisso {
  String titulo;
  String data;
  String hora;
  String descricao;

  Compromisso({
    required this.titulo,
    required this.data,
    required this.hora,
    required this.descricao,
  });

  @override
  String toString() {
    return "Titulo: $titulo | Data: $data | Hora: $hora | Descrição: $descricao";
  }
}

class Agenda {
  List<Compromisso> compromissos = [];

  void adicioarCompromisso(Compromisso compromisso) {
    compromissos.add(compromisso);
    print("\nCompromisso adicionado com sucesso!\n");
  }

  void listarCompromissos() {
    if (compromissos.isEmpty) {
      print("\nNenhum compromisso cadastro\n");
    } else {
      print("\nLista de compromissos:");
      for (int i = 0; i < compromissos.length; i++) {
        print("${i + 1}. ${compromissos[i]}");
      }
    }
  }
}

String lerEntrada(String mensagem) {
  String? entrada;

  do {
    stdout.write(mensagem);
    entrada = stdin.readLineSync();

    if (entrada == null || entrada.trim().isEmpty) {
      print("Entrada invalida. Por Favor, informe um valor.");
    }
  } while (entrada == null || entrada.trim().isEmpty);

  return entrada.trim();
}

String lerData() {
  String data;

  RegExp exp = RegExp(r"^\d{2}-\d{2}-\d{4}$");

  do {
    data = lerEntrada("Data (DD-MM-AAAA)");
    if (!exp.hasMatch(data)) {
      print("Formato inválido: Use DD-MM-AAAA ex: 15-05-2025");
    }
  } while (!exp.hasMatch(data));

  return data;
}

String lerHora() {
  String hora;
  RegExp exp = RegExp(r"^\d{2}:\d{2}$");
  do {
    hora = lerEntrada("Hora (DD:MM)");
    if (!exp.hasMatch(hora)) {
      print("Formato inválido: Use DD-MM-AAAA ex: 15-05-2025");
    }
  } while (!exp.hasMatch(hora));

  return hora;
}

void main() {
  Agenda agenda = Agenda();
  int opcao = 0;

  do {
    print("\n==== MENU AGENDA ====");
    print("1 - Adicionar compromisso");
    print("2 - Listar Compromisso");
    print("3 - Sair");

    stdout.write("Escolha uma opção: ");
    String? entradaOpcao = stdin.readLineSync();
    opcao = int.tryParse(entradaOpcao ?? "") ?? 0;

    switch (opcao) {
      case 1:
        print("\n--- NOVO COMPROMISSO ---");
        String titulo = lerEntrada("Titulo: ");
        String data = lerData();
        String hora = lerHora();
        String descricao = lerEntrada("Descrição: ");

        Compromisso novo = Compromisso(
          titulo: titulo,
          data: data,
          hora: hora,
          descricao: descricao,
        );

        agenda.adicioarCompromisso(novo);
        break;
      case 2:
        agenda.listarCompromissos();
        break;
      case 3:
        print("\nEncerrando programa...");
        break;
      default:
        print("\nOpção invalida. tente novamente.");
    }
  } while (opcao != 3);
}
