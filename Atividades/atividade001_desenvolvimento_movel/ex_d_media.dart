import 'dart:io';

void main() {
  stdout.write("Digite a 1ª nota: ");
  var nota1 = int.parse(stdin.readLineSync()!); // entrada do 1ª nota aleatoria

  stdout.write("Digite a 2ª nota: ");
  var nota2 = int.parse(stdin.readLineSync()!); // entrada do 2ª nota aleatoria

  stdout.write("Digite a 3ª nota: ");
  var nota3 = int.parse(stdin.readLineSync()!); // entrada do 3ª nota aleatoria

  stdout.write("Digite a 4ª nota: ");
  var nota4 = int.parse(stdin.readLineSync()!); // entrada do 4ª nota aleatoria

  int soma = nota1 + nota2 + nota3 + nota4; // soma as notas

  double media = soma / 4;
  // divide a soma pelo numero de notas, no caso eu deixei um numero fixo de 4 por ser um calculo imodificad

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
  print(" ");
  print("~" * 20);
  print("A media do aluno é: $media");
  print("O aluno $status");
  print("~" * 20);
}
