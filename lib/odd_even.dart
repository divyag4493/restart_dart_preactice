import 'dart:io';

void main() {
  stdout.write('Enter the value of lower number:');
  int lowerRange = int.parse(stdin.readLineSync()!);
  stdout.write('Enter the value of upper number:');
  int upperRange = int.parse(stdin.readLineSync()!);

  int numOdd =
      MathOperation().numberOdd(lowerRange: lowerRange, upperRange: upperRange);
  int numEven = MathOperation()
      .numberEven(lowerRange: lowerRange, upperRange: upperRange);
  int primeNumber = MathOperation()
      .primeNumber(lowerRange: lowerRange, upperRange: upperRange);

}

class MathOperation {
  int numberEven({required int lowerRange, required int upperRange}) {
    List<int> evenList = [];
    int terms = 10;
    int count = 0;
    print("Odd series:\tEven series:\n");
    while(evenList.length<terms) {
      for (int i = lowerRange; i <= upperRange; i++) {
        if (i % 2 == 0) {
          evenList.add(i);
          //   print('\n');
        }
        count++;
      }
    }



    print('Number is Even : $evenList');
    return upperRange;
  }

  int numberOdd({required int lowerRange, required int upperRange}) {
    List<int> oddList = [];
    print("Odd series:\tEven series:\n");
    for (int i = lowerRange; i <= upperRange; i++) {
      if (i % 2 != 0) {
        oddList.add(i);
        //   print('\n');
      }
    }
    print('Number is Odd : $oddList');

    return upperRange;
  }

  int primeNumber({required int lowerRange, required int upperRange}) {
    List<int> primeNumberList = [];
    for (int i = lowerRange; i <= upperRange / 2; i++) {
      if(upperRange%i ==0){
        primeNumberList.add(upperRange);
      }
    }
    print('Number is PrimeNumber :$primeNumberList');
    return upperRange;
  }
}
