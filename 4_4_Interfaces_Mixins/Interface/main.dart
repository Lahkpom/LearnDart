import 'User.dart';
void main(){
  
  User u1 = User('Leonel', 24, 'ID98')
  ..setNick2 = 'leo'
  ..setJob = 'Programmer';

  print(u1.toString());
  
  u1.programar();
  u1.compilar();

  

}