void main(){
  Map<String, dynamic> agenda = {
    "Jão": {"idade": 20, "email": "jao@email.com"},
    "Joana": {"idade": 30, "email": "joana@email.com"}
  };

  Map<String, dynamic> cadastro = {
    "nome": "Jão Dia",
    "nascimento" : 1970,
    "altura" : 1.80,
    "est_civil" : "solteiro",
    "cidade" : "Juiz de Fora",
    "uf" : "MG"
  };

  print("-" * 70);
  print("Minha Agenda");
  print(agenda);
  print("-" * 70);

  print("-" * 70);
  print("Meu Cadastro");
  print(cadastro);
  print("-" * 70);
}