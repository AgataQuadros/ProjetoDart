import 'dart:io';

// função para ler e validar um número decimal
double lerNota(String mensagem) {
  double? numero; // define a variavel "numero"

  while (numero == null) {
    // verifica se a variavel é null dentro de um loop
    stdout.write(mensagem);
    String entrada = stdin.readLineSync()!;
    // entrada onde o usuario vai digitar o numero

    entrada = entrada.replaceAll(',', '.');
    // aceita tanto ponto quanto virgula para separar os numeros
    // iso torna mais facil de guiar o usuario
    numero = double.tryParse(entrada);
    // tenta converter a entrada para numero

    if (numero == null) { // se não conseguir retorna a seguinte mensagem
      print("Valor inválido!! Digite um número (ex: 7.5 ou 8.0)\n");
    }
  }

  return numero;
}

void main() {
  // usa a função para ler e validar as notas
  var nota1 = lerNota("Digite a 1ª nota: "); 
  var nota2 = lerNota("Digite a 2ª nota: ");
  var nota3 = lerNota("Digite a 3ª nota: ");
  var nota4 = lerNota("Digite a 4ª nota: ");

  double soma = nota1 + nota2 + nota3 + nota4; // soma as notas
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

  print("~" * 20);
  print("Boletim Bimestral");
  print("1º Bimestre: $nota1");
  print("2º Bimestre: $nota2");
  print("3º Bimestre: $nota3");
  print("4º Bimestre: $nota4");
  print("~" * 20);
  print("");
  print("A média do aluno é: $media");
  print("O aluno $status");
  print("~" * 20);
}