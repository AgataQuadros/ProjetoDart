import 'dart:io';

void main() {
  // solicita a sequência de números separados por espaço
  print("~°" * 20);
  stdout.write("Digite uma sequência de números separados por espaço: ");
  String entrada = stdin.readLineSync()!;

  // separa os números por espaço
  List<String> partes = entrada.split(' ');

  // lista para armazenar apenas os números válidos
  List<double> numeros = [];

  // percorre cada item digitado e tenta converter em número
  for (var item in partes) {
    // substitui vírgula por ponto para evitar erro
    var numero = double.tryParse(item.replaceAll(',', '.'));

    if (numero != null) {
      numeros.add(numero); // adiciona o número válido à lista
    } else {
      // se algum item for inválido, mostra aviso
      print("Valor inválido ignorado: '$item'");
    }
  }

  // verifica se pelo menos um número válido foi inserido
  if (numeros.isEmpty) {
    print("Nenhum número válido foi digitado. Encerrando programa.");
    return;
  }

  // cria cópia e ordena em ordem crescente
  List<double> crescente = List.from(numeros);
  crescente.sort();

  // cria cópia e ordena em ordem decrescente
  List<double> decrescente = List.from(numeros);
  decrescente.sort((a, b) => b.compareTo(a));

  // exibe os resultados formatados com 2 casas decimais
  print("~" * 20);
  print("Números originais: ${numeros.map((n) => n.toStringAsFixed(2)).toList()}");
  print("Ordem crescente: ${crescente.map((n) => n.toStringAsFixed(2)).toList()}");
  print("Ordem decrescente: ${decrescente.map((n) => n.toStringAsFixed(2)).toList()}");
  print("~°" * 20);
}