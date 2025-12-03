import 'dart:io';

class Triangulo {
  //Atributos
  double base;
  double altura;

  // Construtor com parâmetros nomeados
  Triangulo({required this.base, required this.altura});

  // Método paa calcular a área
  double calcularArea() {
    return (base * altura) / 2;
  }
}

void main() {
  // Entrada
  print(" ");
  stdout.write("Digite a medida da base do trângulo: ");
  double base = double.parse(stdin.readLineSync()!);

  stdout.write("Digite a medida da altura do trângulo: ");
  double altura = double.parse(stdin.readLineSync()!);

// Instanciando o objeto com parâmetros nomeados
  Triangulo triangulo = Triangulo(base: base, altura: altura);
  double area = triangulo.calcularArea();

// Saida
  print("A área do triângulo é: $area");
  print("-" * 70);
}
