import 'dart:io';

void main() {
  stdout.write('Enter a number');
  int no = int.parse(stdin.readLineSync()!);
  bool isPrime = true;
  for (int i = 2; i < no / 2; i++) {
    if (no % i == 0) {
      isPrime = false;
      break;
    }
  }
  if (isPrime) {
    print('The given number is a prime number');
  } else {
    print('The given number is not a prime number');
  }
}
