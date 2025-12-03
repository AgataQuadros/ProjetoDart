class Conta {
  // Definição (atributos) da classe Conta
  late String titular;
  late double saldo;

  // Construtor da classe Conta
  Conta(String titular, double saldoInicial) {
    this.titular = titular;
    this.saldo = saldoInicial;
  }

  // Método par realiza o depósito da conta
  void depositar(double valor) {
    saldo += valor;
    print("Deposito de valor $valor realizado. NOvo saldo $saldo");
    print("-" * 70);
  }

  // Método para realizar um saque na conta
  void sacar(double valor) {
    if (saldo >= valor) {
      saldo -= valor; // Decremanto do saldo da conta
      print("Saque de $valor realizado. Novo saldo $saldo");
      print("-" * 70);
    } else {
      print("Saldo insuficiente. Operação não realizada!");
      print("-" * 70);
    }
  }

// Método para exibir o saldo da conta
  void exibirSaldo() {
    print("saldo atual: $saldo");
    print("-" * 70);
  }
}

//uso da clase Conta
void main(){
  Conta cliente1 = Conta("João", 1000.0);
  cliente1.exibirSaldo();
  cliente1.depositar(500.0);
  cliente1.sacar(200.0);
  cliente1.exibirSaldo();
}
