import 'Person.dart';
void main(){
  Person persona1 = Person(name: 'Leonel', age: 24);

  print(persona1.name);
  print(persona1.age);

  persona1.name = 'Hola';
  
  print(persona1.toString());
  


}