import "dart:io";

double? dividendo; // definindo a variavel dividendo
double? divisor; // definindo a variavel divisor
// definidas por fora para não dar erro

void main() {
  stdout.write("Digite o valor do dividendo: ");
  String numero1 = stdin.readLineSync()!; // entrada do 1º numero

  stdout.write("Digite o valor do divisor: ");
  String numero2 = stdin.readLineSync()!; // entrada do 2º numero
  print("~°" * 20);

  if (numero1.isNotEmpty) { // validação do 1º numero
    numero1 = numero1.replaceAll(" ", ""); // retira qulquer espaço na entrada
    if (double.tryParse(numero1) != null) { // verifica se a entrada não é null
      dividendo = double.tryParse(numero1)!; // tenta transformar a string em numero
    } else { // resposta se a entrada não resulta em numero
      print("Por favor digite um valor numérico!");
      print("~°" * 20);
      return;
    }
  } else { // resposta se a entrada for null
    print("Por favor digite algo!");
    print("~°" * 20);
    return;
  }

  if (numero2.isNotEmpty) { // validação do 2º numero
    numero2 = numero2.replaceAll(" ", ""); // retira qulquer espaço na entrada
    if (double.tryParse(numero2) != null) { // verifica se a entrada não é null
      divisor = double.tryParse(numero2)!; // tenta transformar a string em numero
      if (divisor == 0) { // verifica se o divisor é zero e responde com erro
        print("Por favor digite um divisor diferente de zero!");
        print("~°" * 20);
        return;
      }
    } else {// resposta se a entrada não resulta em numero
      print("Por favor digite um valor numérico!");
      print("~°" * 20);
      return;
    }
  } else { // resposta se a entrada for null
    print("Por favor digite algo!");
    print("~°" * 20);
    return;
  }

  double divisao = dividendo! / divisor!; // divide os numeros

  print(" ");
  print("A divisão de $dividendo % $divisor = ${divisao.toStringAsFixed(4)}"); // força a saida a ter 4 casas decimais
  print("~" * 20);
}