import 'dart:io';

void main(){

  stdout.write('Enter No 1 : ');
  int no1 = int.parse(stdin.readLineSync()!);

  // stdout.write('Enter No 2 : ');
  // int no2 = int.parse(stdin.readLineSync()!);

  /// Addition
  /*int Add = MathOperation().addition(no1, no2);
  print('Addition : No 1 = $no1 and No 2 = $no2 = $Add');

  /// Substraction
  int Sub = MathOperation().substraction(no1, no2);
  print('Substraction : No 1 = $no1 and No 2 = $no2 = $Sub');

  /// Multiplication
  int multiplication = MathOperation().multiplication(no1, no2);
  print('Multiplication : No 1 = $no1 and No 2 = $no2 = $multiplication');

  /// Division
  num division = MathOperation().division(no1, no2);
  print('Division : No 1 = $no1 and No 2 = $no2 = $division');*/

  int numOddEven = MathOperation().numberOddEven(no1);
  //print(numOddEven);


}

class MathOperation{
  int addition(int a, int b){
    int add = a+b;
    return add;
  }
  int substraction(int a, int b){
    int sub = a-b;
    return sub;
  }
  int multiplication(int a, int b){
    int multiplication = a*b;
    return multiplication;
  }
  num division(int a, int b){
    num division = a/b;
    return division;
  }

  int numberOddEven(int a){
    if(a%2==0){
      print('Number is Even');
      return a;
    }
    else
      {
        print('Number is odd');
        return a;
      }
    }

}