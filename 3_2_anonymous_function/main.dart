void main() {
  //*Funciones sin nombre
  void functionA() {
    print('This is a function');
  }

  void functionB(Function myFunction) {
    myFunction();
    print('This is b function');
  }

  functionB(functionA);
  print('---');
  functionB((){}); //*Esta es una función anónima que no realiza ninguna tarea
  print('---');
  functionB((){
    print('This is an anonymous function'); //*Podemos enviar cualquier otra acción por parámetro
  });


}
