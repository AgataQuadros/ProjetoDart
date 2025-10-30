void main(){
  List<String> listaAlunas = [
    'Anna',
    'Paula',
    'Isa',
    'Caren'
  ];

  print("~°" * 20);
  print("Lista de Alunas");

  int i = 1;

  for(var aluna in listaAlunas){
    print("Aluna ${i++} : $aluna");
  }

  print('${listaAlunas[0]} tambem conhecid como ${listaAlunas[3]}');
  print('${listaAlunas[3]} tambem conhecid como ${listaAlunas[0]}');
}