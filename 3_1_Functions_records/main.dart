void main() {
  //*variables
  int result;

  //*functions
  void sum(int a, int b) {
    print('Result = ${a + b}');
  }

  sum(5, 5);

  int sum2(int a, int b) {
    return a + b;
  }

  result = sum2(6, 6);

  print('Result = ${result}');

  //*records (retorna mas de u valor)
  (int s, int m) sum_multiply(int a, int b) {
    return (a + b, a * b);
  }

  //*Si no pongo final no me deja
  final result4 = sum_multiply(5, 5);
  print('sum_multiply = $result4');

  final (resul2, result3) = sum_multiply(5, 5);
  print('Sum = $resul2');
  print('Multiply = $result3');
}
