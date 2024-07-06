import 'EMusicalGenere.dart';

void main(){

  //?DATA TYPE

  //*Strings
  String country = 'Aregntina';
  String city = 'Buenos Aires, ${country}';
  print(city);

  //*Numbers
  //!int
  int integer = 1;
  int even = 2;
  int odd = 3;
  print(integer + even + odd);
  //!double
  double a = 2.1;
  double b = 5;
  print(a + b);
  print(a + even);
  //!num
  num c = 5;
  num d = 5.6;
  print(c + d);
  print(a + d + even);

  // even = a; no se puede tener un double en un int
  c = even;
  // a = c; no se puede poner una variable num a un double
  c = a;

  //*boolean
  bool t = true;
  bool f = false;
  print('${t} ${f}');

  //*enum
  EMusicalGenere kiss = EMusicalGenere.ROCK;
  print(kiss);
  print(kiss.name);
  print(kiss.index);


  //?VARIABLES TYPE

  //*Const  Se deben inicializar en el mismo momento en que se declaran
  const int MONTHS = 12;
  const String SAY_HELLO = 'Hello';
  print('${MONTHS}, ${SAY_HELLO}');
  
  //*final  Son constantes que no tienen el requisito de inicializarse al momento de su declaración
  final int WEEKS;
  WEEKS = 4;
  print(WEEKS);

  //*dynamic   son de tipado debil, puede adoptar cualquier tipo de valor
  dynamic jocker;
  print(jocker);
  jocker = 5;
  print(jocker);
  jocker = 10.25;
  print(jocker);
  jocker = 'Hello';
  print(jocker);
  jocker = true;
  print(jocker);
}

