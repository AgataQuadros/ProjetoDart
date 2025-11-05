import 'dart:io';
import 'dart:math';

/*3. Cálculo de Média Ponderada Após Descarte
Considere uma lista de notas de alunos. 
O exercício exige que se descarte a menor nota da lista e, 
em seguida, calcule a média aritmética das notas restantes. 
O resultado deve ser um número decimal (double).
*/

void main() {
  while (true) {
    List<int> numeros = [];
    double nota1 = 0;
    double nota2 = 0;
    double nota3 = 0;
    double nota4 = 0;
    while (true) {
      print(" ");
      print("~°" * 20);
      stdout.write("Digite uma sequencia de números separados por espaço: ");
      String entrada = stdin.readLineSync()!;
      print("");
      print("~" * 20);

      List<String> partes = entrada.split(" ");

      numeros = partes.map((p) => int.tryParse(p) ?? 0).toList();

      if (numeros.isEmpty) {
        print("Por favor digite um número válido");
        print(" ");
        print("~°" * 20);
        continue;
      } else {
        break;
      }
    }

    // oque eu to fazendooo 😭

    var menor1 = min(nota1, nota2);
    var meno2 = min(nota3, nota4);
    var menor = min(menor1, meno2);

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
