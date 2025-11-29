import 'dart:io';

/**
 Filtragem e Soma Condicional de Pares
Dada uma lista de números inteiros, o objetivo é primeiro filtrar apenas os 
números que são pares e, simultaneamente, maiores que 10. Após a filtragem, 
deve-se calcular a soma total desses números restantes.

 */
void main() {
  List<int> listaInteiros = [];
  while (true) {
    while (true) {
      print('-' * 70);
      print('Filtragem e Soma Condicional de Pares');
      print('=' * 70);

      stdout.write('Entre com a quantidade de números: ');
      String? entradaQuantidade = stdin.readLineSync();

      if (entradaQuantidade == null || entradaQuantidade.isEmpty) {
        print('Entrada inválida!');
        continue;
      }

      int? quantidadeNumeros = int.tryParse(entradaQuantidade);

      if (quantidadeNumeros == null || quantidadeNumeros <= 0) {
        print('Quantidade de números inválida!');
        continue;
      }

      for (var i = 1; i < quantidadeNumeros + 1; i++) {
        stdout.write('Entre com o $iº numero: ');
        String? entradaNumero = stdin.readLineSync();

        if (entradaNumero == null || entradaNumero.isEmpty) {
          print('Entrada inválida!');
          continue;
        }

        int? numero = int.tryParse(entradaNumero);

        if (numero == null) {
          print('Número inválido!');
          continue;
        }

        listaInteiros.add(numero);
      }
      // Filtra os números da lista que são pares 
      //(divisíveis por 2) e maiores que 10
      var numerosFiltrados = listaInteiros
          .where((n) => n % 2 == 0 && n > 10)
          .toList();

      // Calcula a soma de todos os números filtrados usando fold
      // Explicação:
      // - `fold` recebe um valor inicial (aqui 0) e uma função que combina o
      //   acumulador com cada elemento da lista.
      // - No exemplo abaixo: o acumulador é `soma` (inicia em 0) e `n` é o
      //   elemento atual da lista; a função retorna o novo acumulador.
      var soma = numerosFiltrados.fold(0, (soma, n) => soma + n);

      // Alternativas sem usar `fold`:
      // 1) Usando um loop for (mais explícito e fácil de entender):
      //    var soma = 0;
      //    for (var n in numerosFiltrados) {
      //      soma += n;
      //    }
      //    // esse código também funciona com listas vazias e é equivalente a
      //    // usar `fold(0, (s, n) => s + n)`.
      //
      // 2) Usando `reduce` (mais conciso), mas atenção: `reduce` lança exceção
      //    em listas vazias, então é necessário proteger:
      //    var soma = numerosFiltrados.isEmpty
      //        ? 0
      //        : numerosFiltrados.reduce((a, b) => a + b);
      //    // `reduce` combina elementos usando a função fornecida e retorna o
      //    // resultado; não recebe um valor inicial.

      // Exibe os números filtrados em uma única linha
      stdout.write('\nNúmeros pares maiores que 10: ');
      for (var numero in numerosFiltrados) {
        stdout.write('$numero ');
      }
      print('');

      print('Soma dos números: $soma');

      while (true) {
        stdout.write('Deseja continuar? (s/n): ');
        String? resposta = stdin.readLineSync();

        if (resposta == null || resposta.isEmpty) {
          print('Resposta inválida!');
          continue;
        }

        resposta = resposta.toLowerCase();

        if (resposta == 'n') {
          print('Fim do programa!');
          return;
        } else if (resposta == 's') {
          //Limpa a lista
          listaInteiros = [];
          break; // Sai do laço e volta pro início da calculadora
        } else {
          print('Opção inválida! Digite "s" ou "n".');
        }
      }
    }
  }
}
