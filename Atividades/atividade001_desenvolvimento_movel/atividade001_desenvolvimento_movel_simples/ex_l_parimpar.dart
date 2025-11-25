import 'dart:io';

// função para ler e validar um número decimal
int lerNumero(String mensagem) {
  int? numero; // define a variavel "numero"

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

  return numero;
}

void main() {
  print("~°" * 20);
  var numero = lerNumero("Digite o número: ");
  print("~°" * 20);

  if (numero % 2 == 0) {
    print(" ");
    print("Esse numero é par!");
    print("~" * 20);
  } else {
    print(" ");
    print("Esse numero é impar");
    print("~" * 20);
  }
}