void main(){
  int valor1 = 10;
  int valor2 = 20;

  int resultadoSoma = somaValores(valor1, valor2);
  print("O resultado da soma  com dois parâmetros: $resultadoSoma\n");

  int resultadoSomaOpcional = somaValores(valor1);
  print("A soma com appenas um parametro: $resultadoSomaOpcional");
}

int somaValores(int valor1, [int valor2 = 0]){
  print("Valor 1: $valor1");
  print("Valor 2: $valor2");

  return valor1 + valor2;
}