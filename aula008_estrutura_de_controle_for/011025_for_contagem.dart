import 'dart:io';

void main() {
  for (int i = 1; i <= 5; i++) {
    print(i);
  }

  for (int i = 1; i <= 5; i++) {
    stdout.write("$i, ");
  }
}