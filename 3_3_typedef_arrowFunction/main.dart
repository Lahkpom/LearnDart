void main(){

  //*ypedef
  operation o1 = toAdd;
  operation o2 = toMultiply;

  final result1 = o1(5, 5);
  final result2 = o2(5, 5);

  print('result1 = ${result1}');
  print('result2 = ${result2}');
  
  //!No entiendo porqué lo del typedef si se puede hacer directo; es como un 'alias'
  final result3 = toAdd(5, 6);
  
  print('result3 = ${result3}');


  //*Arrow Function
  int toSubtract(int a, int b) => a - b;

  final result4 = toSubtract(10, 5);

  print('result4 = ${result4}');

}

int toAdd(int a, int b){
  return a +b;
}

int toMultiply(int a, int b){
  return a * b;
}

typedef operation(int a, int b);