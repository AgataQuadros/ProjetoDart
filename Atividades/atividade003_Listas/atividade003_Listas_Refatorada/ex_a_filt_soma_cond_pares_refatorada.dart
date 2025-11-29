import 'dart:io';

/*1. Filtragem e Soma Condicional de Pares
Dada uma lista de números inteiros, o objetivo é primeiro filtrar apenas os 
números que são pares e, simultaneamente, maiores que 10.
Após a filtragem, deve-se calcular a soma total 
desses números restantes.*/

List<int> lerInt(lista) {
  List<int> numeros = [];
  while (true) {
    print(" ");
    print("~°" * 20);
    stdout.write('Entre com uma sequencia de números separados por espaço: ');
    String entrada = stdin.readLineSync()!;
    print("");
    print("~" * 20);

    List<String> partes = entrada.split(" ");

    numeros = partes.map((p) => int.tryParse(p) ?? 0).toList();

    return numeros;
  }
}

bool desejaContinuar() {
  while (true) {
    print(" ");
    stdout.write('Deseja continuar? (s/n): ');
    String? resposta = stdin.readLineSync();
    print("~" * 20);

    if (resposta == null || resposta.isEmpty) {
      print(" ");
      print('Resposta inválida!');
      print("~°" * 20);
      continue;
    }

    resposta = resposta.toLowerCase();

    if (resposta == 'n') {
      print(" ");
      print("Obrigado por usar! Encerrando o programa... ");
      print("~°" * 20);
      return false;
    } else if (resposta == 's') {
      return true; // Sai do laço e volta pro início da calculadora
    } else {
      print(" ");
      print('Opção inválida! Digite "s" ou "n".');
      print("~°" * 20);
    }
  }
}

List filtroEsoma(numeros) {
  List<int> numerosFiltrados = numeros
      .where((num) => num % 2 == 0 && num > 10)
      .toList();

  int numerosSomados = 0;

  if (numerosFiltrados.length == 0) {
    print("Valor invalido, nenhum número maior que 10 encontrado");
  } else {
    numerosSomados = numerosFiltrados.reduce((soma, num) => soma += num);
  }

  return [numerosFiltrados, numerosSomados];
}

void main() {
  while (true) {
    List<int> lista = [];
    var numeros = lerInt(lista);

    var filtra_soma = filtroEsoma(numeros);

    print(" ");
    print("Sua lista: $numeros");
    print("~" * 20);
    print("Lista filtarada: ${filtra_soma[0]}");
    print("~" * 20);
    print("Lista Somada: ${filtra_soma[1]}");
    print("~" * 20);

    if (!desejaContinuar()) {
      print('Fim do programa!');
      return;
    }
  }
}
