void main() {
  String frase = "Gal Gadot! My true love";

  int tamanhoString = frase.length;

  String fraseMaiuscula = frase.toUpperCase();

  String fraseMinuscula = frase.toLowerCase();

  bool contemGal = frase.contains('Gal');

  bool comtemBatman = frase.contains("Batman");

  String pedaco = frase.substring(0, 9);

  String substituida = frase.replaceAll("love", 'paixão');

  List<String> palavras = frase.split(" ");

  String comEspacos = "   Gal Gadot   ";

  String semEspcos = comEspacos.trim();

  print(" ");
  print("~°" * 20);
  print("Frase original: $frase");
  print("~" * 20);
  print("Tamanho da Frase: $tamanhoString");
  print("~" * 20);
  print("Maiúscula: $fraseMaiuscula");
  print("~" * 20);
  print("Miníscula: $fraseMinuscula");
  print("~" * 20);
  print("Contem 'Gal'? $contemGal");
  print("~" * 20);
  print("Contem 'Batman'? $comtemBatman");
  print("~" * 20);
  print("Substring (0 a 9): $pedaco");
  print("~" * 20);
  print("ReplaceAll: $substituida");
  print("~" * 20);
  print("Split em palavra: $palavras");
  print("~" * 20);
  print("Trim antes: $comEspacos");
  print("~" * 20);
  print("Tim depois: $semEspcos");
  print("~°" * 20);
}
