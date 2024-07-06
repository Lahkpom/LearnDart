import 'User.dart';
void main(){
  
  User u1 = User('Leonel', 24, 'ID98')
  ..setNick2 = 'leo'
  ..setJob = 'Programmer';

  print(u1.toString());
  
  u1.mostrarAfiliacion(u1.getName);
  //*De firma automático tenémos acceso a los métodos que el mixin contenga, sin necesidad de modificar nuestro código

  

}