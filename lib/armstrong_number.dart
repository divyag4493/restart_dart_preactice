import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Enter a number : ');
  int no = int.parse(stdin.readLineSync()!);

  print(isArmNo(no));


}

bool isArmNo(int no){
  int digits = 0;
  int temp = no;

  while (temp > 0) {
    temp = temp ~/ 10;
    digits++;
  }

  int sum = 0;
  temp = no;
  while (temp > 0) {
    int rem = temp % 10;
    sum += pow(rem, digits).toInt();
    temp = temp ~/ 10;
  }
  // if (no == sum) {
  //   print('$no is an Armstrong number');
  // } else {
  //   print('$no is not an Armstrong number');
  // }
  return no==sum;
}
