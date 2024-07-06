void main(){
  //*Funcion comun
  int suma(int a, int b){
    return a + b;
  }

  //*Funcion flecha, reduce el tamaño de las funciones simples
  int resta(int a, int b) => a - b;


  print(suma(10, 5));
  print(resta(10, 5));



  //*Ejemplo con funcion anonim

  void anonima(Function metodo) => metodo();

  anonima(() => suma(7, 8));
}