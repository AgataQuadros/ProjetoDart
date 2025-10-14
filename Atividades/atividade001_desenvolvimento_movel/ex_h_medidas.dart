import "dart:io";

int? medidaValor;
String? saidaMedidaValor;
int? medidaPretendida;
String? saidaMedidaPretendida;
double? valorConvertido;
double? valor;

void main () {
  print("~"*30);
  print("Conversor de Medidas");
  print("~"*30);

  while (true) {
    stdout.write("Digite o valor para conversão (sem unidade de medida): ");
    valor = double.tryParse(stdin.readLineSync()!);
    print("~"*30);

    if (valor != null) {
      while (true) {
        print("1 - Centímetros (cm)");
        print("2 - Metros (m)");
        print("3 - Quilômetros (km)");

        stdout.write("Escolha a unidade de medida do valor: ");
        medidaValor = int.tryParse(stdin.readLineSync()!);
        print("~"*30);

        if (medidaValor != null && medidaValor! > 0 && medidaValor! < 4) {
          while (true) {
            print("1 - Centímetros (cm)");
            print("2 - Metros (m)");
            print("3 - Quilômetros (km)");

            stdout.write("Escolha a unidade de medida pretendida: ");
            medidaPretendida = int.tryParse(stdin.readLineSync()!);
            print("~"*30);

            if (medidaPretendida != null && medidaPretendida! > 0 && medidaPretendida! < 4 && medidaPretendida != medidaValor) {
              break;
            } else {
              print("Por favor digite o número de alguma opção, diferente da que o valor está!");
              print("~"*30);
              continue;
            }
          }
          break;
        } else {
          print("Por favor digite o número de alguma opção!");
          print("~"*30);
          continue;
        }
      }
    } else {
      print("Por favor digite um número como valor, sem sua unidade de medida!");
      print("~"*30);
      continue;
    }

    switch ([medidaValor!, medidaPretendida!]) {
      case [1, 2]:
        // Centímetro para metro
        valorConvertido = valor!/100;
        saidaMedidaValor = "centímetros";
        saidaMedidaPretendida = "metros";
        break;
      case [1, 3]:
        // Centímetro para quilômetro
        valorConvertido = valor!/100000;
        saidaMedidaValor = "centímetros";
        saidaMedidaPretendida = "quilômetros";
        break;
      case [2, 1]:
        // Metro para centímetro
        valorConvertido = valor!*100;
        saidaMedidaValor = "metros";
        saidaMedidaPretendida = "centímetros";
        break;
      case [2, 3]:
        // Metro para quilômetro
        valorConvertido = valor!/1000;
        saidaMedidaValor = "metros";
        saidaMedidaPretendida = "quilômetros";
        break;
      case [3, 1]:
        // Quilômetro para centímetro
        valorConvertido = valor!*100000;
        saidaMedidaValor = "quilômetros";
        saidaMedidaPretendida = "centímetros";
        break;
      case [3, 2]:
        // Quilômetro para metro
        valorConvertido = valor!*1000;
        saidaMedidaValor = "quilômetros";
        saidaMedidaPretendida = "metros";
        break;
      default:
        print("Erro fatal: Não era pra chegar aqui!");
        print("~"*30);
        break;
    }

    print("$valor $saidaMedidaValor equivalem a $valorConvertido $saidaMedidaPretendida");
    print("~"*30);

    stdout.write("Pressione enter para converter outra medida ou 0 para sair: ");
    String continuar = stdin.readLineSync()!;
    print("~"*30);

    if (continuar == "0") {
      break;
    } else {
      continue;
    }
  }
}