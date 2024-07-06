import 'Person.dart';
void main(){
  Person p1 = Person('Leonel', 24);

  print(p1.toString());
  print(p1.getName);
  print(p1.getAge);
  p1.setName = 'Leonardo';
  p1.setAge = 25;
  print(p1.toString());

  print('');

  Person p2 = Person('Fiorella', 23, nick: 'Fio');
  print(p2.toString());
  print(p2.getName);
  print(p2.getAge);
  p2.setNick = 'La fiore';
  p2.setNick2 = 'La morocha';
  print(p2.toString());
  
  
}