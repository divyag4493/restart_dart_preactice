import 'dart:math';

import 'Dart:io';


void main() {
  String getValue()=> stdin.readLineSync()!;
  int getIntValue() => int.parse(getValue());
  // stdout.write("Enter a value of A:");
  // var A = int.parse(stdin.readLineSync()!);
  // stdout.write("Enter a value of B:");
  // var B = int.parse(stdin.readLineSync()!);
  // var c =0;
  // c=A; // c=3
  // A=B; // a=3 b=4 . a=4 b =3
  // //c=B;// a=b , c=a
  // B=c;//b=0
  //
  //
  // stdout.write("Trying to addition [$A , $B]");
  // //print("Trying to addition $A+ $B ");

  // stdout.write('Enter no 1. : ');
  // var no1 = int.parse(stdin.readLineSync()!);
  // stdout.write('Enter no 2:');
  // var no2 = int.parse(stdin.readLineSync()!);
  // var calc = calculator();
  //calc.Calc(no1, no2);
  // var sum = no1 + no2;
  // var sub = no1 - no2;
  // var multi = no1 * no2;
  // var div = no1 / no2;
  // print('The value of Sumation = $sum ');
  // print('The value of Substraction = $sub ');
  // print('The value of Multiplication = $multi ');
  // print('The value of Division = $div ');
  /*stdout.write('Enter a number:');
  var No = int.parse(stdin.readLineSync()!);
  if(No % 2 == 0) {
    print('Your number is Even');
  }
  else {
    print('your number is Odd');
  }
*/

  /*// #region Armstrong programs;
  String getValue()=> stdin.readLineSync()!;
  int getIntValue() => int.parse(getValue());

  *//*stdout.write('Enter Upper range');
  var upperRange = getIntValue();
  stdout.write('Enter a numer');
  var num = int.parse(stdin.readLineSync()!);*//*
  List<int> nTerms = [];

// bool isAmstrong= SomeOperation().isAmstrong(num);
  *//*for(int i = 0; i<upperRange; i++) {
    if (isAmstrong) {
      print('$upperRange Number is Armstong!');
    }else {
      print(' $upperRange Number is not Armstrong!');
    }
  }*//*
 print('Enter terms');
  int terms = getIntValue();
  List<int> armList = [];
  int count = 0;
  int no = 1;

  while(count<terms){
    if(SomeOperation().isAmstrong(no)){
            count++;
            armList.add(no);
    }
    no++;
  }
  print(armList);
*/
  //#endregion

  //#region Palindrome Number

  /*print('Enter Number for palindrome : ');
  int no = getIntValue();

  int temp = no;
  int sum = 0, rem ;

  while(temp>0){
    rem = no % 10;
    sum = (sum*10) + rem;
    temp = temp ~/10 ;

  }
  if(sum == temp)
  {
    print('Its A Palindrome number');
  }else{
    print('Its A Not Palindrome number');
  }*/

//#endregion Palindrome

// #region Fibonaccie series

  print('Enter number for fibbo');
  int number = getIntValue();
  int n1 = 0, n2 = 1, n3=0;
  List<int> listFibo = [0,1];
  for(int i = 2; i<=number ; i++){
    n3 = n1 +n2;
    listFibo.add(n3);
    n1 = n2;
    n2 = n3;
  }
  print(listFibo);

// #endregion

  /* stdout.write('Enter a number:');
  var N = int.parse(stdin.readLineSync()!);
  var someOperation = SomeOperation();
 bool check =  someOperation.isPrime(N);

  if (check) {
    print('Number is prime:');
  }
  else {
    print('Number is not prime:');
  }
*/
  // Which number is big
  /*stdout.write('Enter no 1:');
  var n1 = int.parse(stdin.readLineSync()!);
  stdout.write('Enter no 2:');
  var n2 = int.parse(stdin.readLineSync()!);
  stdout.write('Enter no 3:');
  var n3 = int.parse(stdin.readLineSync()!);
  var someOperation = SomeOperation();
  bool bigNumber = someOperation.bigNumber(n1, n2, n3);*/
  /*if(bigNumber )
    {
      //print('number $n1 $n2 $n3 is big');
    }*/



}
class SomeOperation{
  /*int isPrimea(N){
      for(var i = 2; i<=N/i; ++i) {
        if (N % i == 0) {
          return 0;
        }
      }
        return 1;
    }*/

  /*bool isPrime(N){
    for(var i = 2; i<=N/i; ++i) {
      if (N % i == 0) {
        return false;
      }
    }
    return true;
  }*/

  /*bool bigNumber(n1, n2, n3){
    if(n1 >= n2 && n1>=n3 ){
      print('Number $n1 is big');
      return true;
    }
    else if(n2 >= n3 && n2>=n1 ) {
      print('Number $n2 is big ');
      return true;
    }
    else {
      print('Number $n3 is big');
      return true;
    }
  }*/


  bool isAmstrong(int num)
  {
    // int  numberOfDigits = num.toString().length;
    int no= 0;
    int digits = 0;
    int temp = num;

    while(temp>0)
    {
      temp = temp ~/10;
      digits++;
    }
    int sum = 0;
    temp = num;
    while(num>0)
    {
      int digit  = num % 10;
      sum = sum + pow(digit, digits).toInt();
      num = num ~/ 10;
    }
    return sum == temp;
  }
}

