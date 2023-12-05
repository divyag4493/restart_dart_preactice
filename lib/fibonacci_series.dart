import 'dart:io';

void main(){
  stdout.write('Enter a number');
 int number = int.parse(stdin.readLineSync()!);
 int a=0, b=1,c;
 List list = [];
 list.addAll([a,b]);
 for(int i = 1;i<=number ; i++){
   c=a+b;
   list.add(c);
   a=b;
   b=c;
 }
 print(list);

}