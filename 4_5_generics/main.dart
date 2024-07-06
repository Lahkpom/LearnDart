import 'User.dart';
import 'User2.dart';

void main(){
  //*Los generics pueden tomar cualquier tipo de valor implementados en nuestras clases

  //*Podemos dejarlo así
  User u1 = User('Leonel', 'Leo');

  //*O específicar entre diamantes qué tipo de valor queremos que sea la T
  User u2 = User<String>('Facundo', 'Facu');

  User u3 = User<int>(24, 20);

  //*Cuando tenémos más de un tipo de dato genérico
  User2 u4 = User2<String, int>('Leonel', 'Leo', 24);
  
  
  
  print(u1.getName);
  print(u1.getNick);
  print('');
  print(u2.getName);
  print(u2.getNick);
  print('');
  print(u3.getName);
  print(u3.getNick);
  print('');
  print(u4.getName);
  print(u4.getNick);
  print(u4.getAge);

  

  
}