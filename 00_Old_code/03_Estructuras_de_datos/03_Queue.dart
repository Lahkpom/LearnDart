import "dart:collection";
void main(){
  //*Esto es una cola
  //*Requiere una importación
  //*'import "dart:collection";'
  //*La palabra rerservada para las colas es Queue
  //*Se le debe poner entre diamante el tipo de dato que almacenará
  //*e inicializarla con el constructor

  Queue<String> cola = Queue<String>();

  //*Añadir elementos
  cola.add('uno');
  cola.add('dos');
  cola.add('tres');

  print(cola);

  //*añadir elementos al principio de la cola
  cola.addFirst('cuatro');
  print(cola);

  //*añadir elementos a lo último de la cola(Es lo mismo que añadirlo solo con .add())
  cola.addLast('cero');
  print(cola);

  //*Remover elementos
  //*Remover el 1er elemento
  cola.removeFirst();
  print(cola);

  //*Remover el ultimo elemento
  cola.removeLast();
  print(cola);

  //*Como traer el primer elemento de la cola
  print(cola.first);

  //*Remover con removeWhere(), que cumple una condición
  Queue<int> numeros = Queue<int>();

  for(int i = 0; i <= 20; i++){
    numeros.add(i);
  }

  print(numeros);

  numeros.removeWhere((element) => element % 2 == 0);
  print(numeros);


  //*Obtener el valor de un elemnto por su posicion con elementAt()

  for(int i = 0; i < numeros.length; i++){
    print(numeros.elementAt(i));
  }

  numeros.forEach((element) {
    print(element);
  });
  
}