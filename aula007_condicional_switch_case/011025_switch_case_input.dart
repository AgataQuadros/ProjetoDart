import 'dart:io';

void main () {
  print("1 - Numero par");
  print("2 - Maior número");
  print("3 - Sair");

  stdout.write("Digite uma opção: ");
  var opcao =  int.parse(stdin.readLineSync()!);

  switch (opcao) {
    case 1:
      stdout.write("Digite um número: ");
      var numero =  int.parse(stdin.readLineSync()!);

      if (numero == " " || numero == ""){

      }

      if (numero % 2 == 0) {
        print("O número $numero é par!");
      } else {
        print("O número $numero é par!");
      }
      break;

    case 2:
      stdout.write("Digite o valor 'a': ");
      var a =  int.parse(stdin.readLineSync()!);

      stdout.write("Digite o valor 'b': ");
      var b =  int.parse(stdin.readLineSync()!);

      if (a > b) {
        print("O número $a é maior que o número $b!");
      } else if (a < b) {
        print("O número $a é menor que o número $b!");
      } else {
        print("Os números são iguais!");
      }
      break;

    case 3:
      print("Saindo do programa...");
      break;
    
    default:
      print("Fora do intervalo de opções");
  }
}
