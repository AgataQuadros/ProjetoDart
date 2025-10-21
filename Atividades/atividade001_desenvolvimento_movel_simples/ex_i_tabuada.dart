import 'dart:io';



void main() {
  print("~°" * 20);
  var numero = lerNumero("Digite o número: ");
  print("~°" * 20);
  while (numero == null) {
    // verifica se a variavel é null dentro de um loop
    stdout.write(mensagem);
    String entrada = stdin.readLineSync()!;
    // entrada onde o usuario vai digitar o numero

    numero = int.tryParse(entrada);
    // tenta converter a entrada para numero

    if (numero == null) {
      // se não conseguir retorna a seguinte mensagem
      print("Valor inválido!! Digite um número\n");
      print("~°" * 20);
    }
  }

  int i = 1;

  while (i <= 10) {
    int tabuada = numero * i;
    print(" ");
    print("$numero x ${i} = $tabuada");
    print("~°" * 20);
    i++;
  }
}
