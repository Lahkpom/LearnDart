void main(){
  //*Tipos de variables

  //*Específicos / Fuerte
  //Cadenas
  String cadena1 = "Hola mundo";
  String cadena2 = 'Hola mundo';
  //Números
  int num1 = 23;
  int num2 = -23;
  double num3 = 23.23;
  //Estados (booleanos)
  bool a = true;
  bool b = false;

  //*Imprimirlo
  print(cadena1);
  print(cadena2);
  print(num1);
  print(num2);
  print(num3);
  print(a);
  print(b);

  //*Variados / dinámico
  //!Pueden cambiar su valor
  
  //?dynamic
  //Pueden almacenar cualquier valor 
  dynamic ejemplo = 'lunes';
  print('ejemplo tiene: ${ejemplo}');
  ejemplo = 'martes';
  print('ejemplo tiene: ${ejemplo}');
  ejemplo = 10;
  print('ejemplo tiene: ${ejemplo}');
  ejemplo = 10.23;
  print('ejemplo tiene: ${ejemplo}');
  ejemplo = true;
  print('ejemplo tiene: ${ejemplo}');

  //?num
  //Pueden almacenar cualquier valor numérico
  num ej1 = 1;
  print('ej1 tiene: ${ej1}');
  ej1 = 1.23;
  print('ej1 tiene: ${ej1}');

  //?var
  //Se le puede asignar cualquier valor al ser incializada
  //Pero solo se le podrán reasignar otros valores del mismo
  //tipo con el que se la inicializó
  var var1 = 1;
  var1 = 2;
  print(var1);


  //* Constantes
  //?const
  //Debe inicializarse al momento de ser declarada y no se puede reasignar valor
  const int constante = 1;
  const String constante2 = 'hola';
  const bool constante3 = false;
  const double constante4 = 2.3;
  print(constante);
  print(constante2);
  print(constante3);
  print(constante4);

  //?final
  //Se la puede declarar sin asignarle valor, pero al momento de ser
  //asignado ese valor, toma carater de const ya no se puede cambiar
  final int numEjemplo;
  numEjemplo = 10;
  print(numEjemplo);
}  
