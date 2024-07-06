void main() {
  //*Los valores siempre deben ser inicializados junto co la declaracin de la vairable y
  //*no pueden ser nulos a menos que se declare la variable con un ?
  String? name;

  print('name = ${name}');

  name = null;

  print('name = ${name}');

  name = 'Leonel';

  print('name = ${name}');

  //*Otra forma de no inicializar la variable junto con la declaracin es con late
  //*late indica que el valor no va a ser nulo pero que se colocar ms adelante

  late String lastName;

  lastName = 'Hidalgo';

  print('lastName = ${lastName}');

  //!Ejemplo complejo
  //!Si a la variable late la inicializamos con otra variable y esa otra variable
  //!esta declarada como '?' ns genera un error debido a que mientras la segunda
  //! puede llegar a ser null, la primera no
  //!para solucionar esto, al momento de la asignacin dl valor debemos colocar
  //! un '!' en la segunda variable, de modo que el sistema interpreta que el
  //!el programador asegura que esa segunda variable tendr un valor distinto de null

  late int amount;
  int? a;

  amount = a!;

  print(amount);
}
