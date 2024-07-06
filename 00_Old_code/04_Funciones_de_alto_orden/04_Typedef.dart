void main(){
  //*Es para darles un nombre o alias a una funcion cuando es compleja o utilizada por otro paquete
  void suma(int x, int y) => print(x + y);
  void resta(int x, int y) => print(x - y);
  void multiplicacion(int x, int y) => print(x * y);
  void division(int x, int y) => print(x / y);
  
  //*La inicializo
  Operacion funciones;

  //*Sin agregar parametro
  funciones = suma;
  funciones(5, 5);
  
  funciones = resta;
  funciones(5, 5);
  
  funciones = multiplicacion;
  funciones(5, 5);
  
  funciones = division;
  funciones(5, 5);

  //*funciones toma caracter dependiendo de con quien la iguale

}
//*Deben ser declaradas por fuera del main
//*Se compone de typedef NombreAlias(parametros)
//*Es un alias general para todas las funciones que podamos utilizar
typedef Operacion(int x, int y);
