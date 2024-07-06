import 'Person.dart';
void main(){
  //*Suponiendo el caso de que tengamos atributos que no son requeridos por el constructor para
  //*instanciar la clase, en caso de tener dicha información al momento de declarala, podemos usar
  //*la notación en cascada para aguilizarlo
  
  //!sin notacion en cascada
  Person p1 = Person('Leonel', 24, nick: 'Fio');

  p1.setJob = 'Pizza Delivery Person';
  //p1.setJob = 'Pizza Delivery Person'; //!ETC
  //p1.setJob = 'Pizza Delivery Person';
  //p1.setJob = 'Pizza Delivery Person';
  
  print(p1.toString());

  print('');

  //!con notacion en cascada
  Person p2 = Person('Facundo', 22, nick2: 'Gay')
    ..setJob = 'Taxi Driver';
    //..setXXX = 'XXX'; //!ETC
    //..setXXX = 'XXX';
    //..setXXX = 'XXX';
  
  print(p2.toString());
}