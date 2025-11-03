void main(){
  print(" ");
  print("~°" * 20);
  print("EXEMPLO DE USO DO WHERE()");
  print("~" * 20);

  List<int> numeros = [1,2,3,4,5,6,7,8,9,10];

  List<int> numerospares = numeros.where((num) => num % 2 == 0).toList();

  print('Nova lista de número pares: $numerospares');
  print("~°" * 20);
}