void main(){
  void mensaje(){
    print('Hola');
  }

  mensaje();

  //*Dentro del paréntesis pueden o no especificarse el tipo de dato
  int sumar(int a, int b){
    return a + b;
  }

  print(sumar(4, 8));


  //*Parámetros 'nombrados' o 'por defecto'
  //*Estos van entre llaves
  //*No obligatorio darles un parámetro al llamar a la funcion
  //*Se debe poner un valor por defecto
  int resta({int a = 5, int b = 1}){
    return a - b;
  }

  //*Al llamar a la función, se debe aclarar a qué parámetro se le asigna tal valor
  print(resta(a : 8, b : 3));
  print(resta(b : 3));
  print(resta(a : 8));

  
  
  //*Que haya algunas variables obligatorias y otras nombradas
  int multiplicacion(int a, {int b = 5}){
    return a * b;
  }

  print(multiplicacion(3, b:4));
  print(multiplicacion(3));
  
}