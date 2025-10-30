void main(){
  dynamic listaVazia = [];

  var numerosInteiros = [1,2,3,4,5];

  List<int> numerosInteiros2 = [6,7,8,9,10];

  List<double> numerosDecimais = [1.2,2.2,3.3,4,5];

  List<String> listaNomes = ['John Doe', 'Jane Doe'];

  dynamic listaComListas= [
    [1,2,3],
    ['Um', 'Dois', 'Três']
  ];

  print(" ");
  print("~°" * 20);
  print("Lista vazia: $listaVazia");
  print("~" * 20);
  print("Lista de inteiros 1: $numerosInteiros");
  print("~" * 20);
  print("Lista de inteiros 2: $numerosInteiros2");
  print("~" * 20);
  print("Lista de decimais: $numerosDecimais");
  print("~" * 20);
  print("Lista de strings: $listaNomes");
  print("~" * 20);
  print("Lista de listas: $listaComListas");
  print("~°" * 20);
}