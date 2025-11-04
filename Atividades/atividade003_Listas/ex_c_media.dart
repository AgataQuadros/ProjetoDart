import 'dart:io';

/*3. Cálculo de Média Ponderada Após Descarte
Considere uma lista de notas de alunos. 
O exercício exige que se descarte a menor nota da lista e, 
em seguida, calcule a média aritmética das notas restantes. 
O resultado deve ser um número decimal (double).
*/

void main() {
  print(" ");
  print("~°" * 20);
  print("~" * 20);
  while (true) {
    int? numero;
    while (true) {
      print(" ");
      print("~°" * 20);
      stdout.write("Digite um número: ");
      String entrada = stdin.readLineSync()!;
      print("");
      print("~" * 20);
      numero = int.tryParse(entrada.replaceAll(" ", ""));
      if (numero == null || numero.isNegative) {
        print("Por favor digite um número válido");
        print(" ");
        print("~°" * 20);
        continue;
      } else {
        break;
      }
    }

    while (true) {
      print(" ");
      stdout.write('Deseja continuar? (s/n): ');
      String? resposta = stdin.readLineSync();
      print("~" * 20);

      if (resposta == null || resposta.isEmpty) {
        
        print(" ");
        print('Resposta inválida!');
        print("~°" * 20);
        continue;
      }

      resposta = resposta.toLowerCase();

      if (resposta == 'n') {

        print(" ");
        print("Obrigado por usar! Encerrando o programa... ");
        print("~°" * 20);
        return;
      } else if (resposta == 's') {

        break; // Sai do laço e volta pro início da calculadora
      } else {

        print(" ");
        print('Opção inválida! Digite "s" ou "n".');
        print("~°" * 20);
      }
    }
  }
}
