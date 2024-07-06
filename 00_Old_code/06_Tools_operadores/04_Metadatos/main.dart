import 'Delete.dart';
import 'Todo.dart';

void main(){

  //*override 
  //*La clase, objeto o dato que tiene este override no está bajo el control del programador
  
  //*deprecated
  //*La clase, objeto o dato que tiene este deprecated está 
  //*obsoleto (que ya no se le va a dar mantenimiento)

  //*No se puede modificar, solo utilizar

  //*Se indica con el '@' e indican a otros programadores que solo pueden utilizarla 
  //*Y no modificarla

  @override
  void helloWorld(){
    print('Hello world');
  }

  /*
  @deprecated
  void restar(){}
  */

  //*Nostros podemos crear nuestros propios metadatos, como el Todo (Para hacer)
  //*Para indicaciones

  @Todo('Hidalgo', 'You must make an addition')
  void addition(){}

  @Delete()
  void deleteThisCode(){}


}