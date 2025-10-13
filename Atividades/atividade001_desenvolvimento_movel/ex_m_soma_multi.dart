import 'dart:io';

// função para ler e validar um número decimal
int lerNota(String mensagem) {
  int? numero; // define a variavel "numero"

  while (numero == null) {
    // verifica se a variavel é null dentro de um loop
    stdout.write(mensagem);
    String entrada = stdin.readLineSync()!;
    // entrada onde o usuario vai digitar o numero

    entrada = entrada.replaceAll(',', '.');
    // aceita tanto ponto quanto virgula para separar os numeros
    // iso torna mais facil de guiar o usuario
    numero = int.tryParse(entrada);
    // tenta converter a entrada para numero

    if (numero == null) {
      // se não conseguir retorna a seguinte mensagem
      print("Valor inválido!! Digite um número (ex: 7.5 ou 8.0)\n");
    }
  }

  return numero;
}

void main() {
  // usa a função para ler e validar as notas
  var numero1 = lerNota("Digite a 1ª nota: ");
  var numero2 = lerNota("Digite a 2ª nota: ");

  int resposta = 0; // define a variave resposta

  // validação para saber qual conta fazer
  if (numero1 == numero2) {
    resposta = numero1 + numero2;
    print("~" * 20);
    print("o resultado de $numero1 + $numero2 é");
    print(resposta);
    print("~" * 20);
  } else {
    resposta = numero1 * numero2;
    print("~" * 20);
    print("o resultado de $numero1 X $numero2 é");
    print(resposta);
    print("~" * 20);
  }
}