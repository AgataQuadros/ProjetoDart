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
    List<double> notas = [];
    while (true) {
      print(" ");
      print("~°" * 20);
      stdout.write("Digite uma sequencia de números separados por espaço: ");
      String entrada = stdin.readLineSync()!;
      print("");
      print("~" * 20);

      List<String> partes = entrada.split(" ");

      notas = partes
          .map((p) => double.tryParse(p.replaceAll(",", ".")) ?? 0)
          .toList();

      if (notas.isEmpty) {
        print("Por favor digite um número válido");
        print(" ");
        print("~°" * 20);
        continue;
      } else {
        break;
      }
    }

    // <======= PROCESSAMENTO =======>
    // Encontra o menor número de uma lista reduzindo de acordo com o menor entre dois elementos
    double menor = notas.reduce(min);

    // Copia a lista notas para a lista notas_finais
    List<double> notas_finais = [...notas];

    // Remove o menor número das notas_finais
    notas_finais.remove(menor);

    // Soma todas as notas para um total
    double soma = notas_finais.reduce(
      (acumulador, numero) => acumulador + numero,
    );

    // Calcula a media das notas
    double media = soma / notas_finais.length;

    print(" ");
    print("Sua lista: $notas");
    print("~" * 20);
    print("Lista de Notas Filtarada: $notas_finais");
    print("~" * 20);
    print("Notas Somadas: $soma");
    print("~" * 20);
    print("Media das Notas: ${media.toStringAsFixed(2)}");
    print("~" * 20);

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
