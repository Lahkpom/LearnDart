void main(){
  int a = 10;
  int? b = null;

  //*si intentamos sumar un numero con un null da error, pero para que no nos termine el programa, podemos
  //*capturarlo y enviar un mensaje indicando qué pasó

  try {
    print(a + b!); //*Con ! le indicamos al programa que ya debería tener un valor
  } catch (e) { //*e es el error que se captura
    print('Ocurrió un error \n${e.toString()}'); //*con el toString lo convertimos a texto
  } finally { //*el finally es opcional que esté o no en la estructura
    print('Este es el final que se ejecuta haya o no una excepción');
  }

  //!También podemos crear nuestras propias excepciones con throw new dentro del try
  //*Hacemos esto cuando queremos lanzar excepciones en casos que el propio lenguaje no manda por defecto
  //*o que queramos personalizar
  //*En este caso, Dart admite división por 0

  print('\nEjemplo con División por 0');
  b = 0;
  try {
    if(b == 0){
      throw new Exception('No es posible dividir por cero');
    } else {
      print(a / b);
    }
  } catch (e) {
    print('Ocurrió un error \n${e.toString()}');
  }
}