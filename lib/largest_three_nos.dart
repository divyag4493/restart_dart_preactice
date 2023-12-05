import 'dart:io';

void main() {
  stdout.write('Enter No 1: ');
  int no1 = int.parse(stdin.readLineSync()!);
  stdout.write('Enter No 2: ');
  int no2 = int.parse(stdin.readLineSync()!);
  stdout.write('Enter No 3: ');
  int no3 = int.parse(stdin.readLineSync()!);

  if (no1 >= no2 && no1>=no3) {
    print('A is greter than B or C');
  } else if (no2 >= no3 && no2>=no1) {
    print('B is greter than A or C');
  } else {
    print('C is greter than A or B');
  }
}
