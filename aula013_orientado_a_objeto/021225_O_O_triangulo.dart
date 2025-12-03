import 'dart:io';

class Triangulo {
  //Atributos
  double base;
  double altura;

  // Método construtor
  Triangulo(this.base, this.altura);

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

// Instanciando o objeto
  Triangulo triangulo = Triangulo(base, altura);
  double area = triangulo.calcularArea();

// Saida
  print("A área do triângulo é: $area");
  print("-" * 70);
}
