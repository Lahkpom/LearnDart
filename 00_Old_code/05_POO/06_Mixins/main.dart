import 'Student.dart';

void main(){
  //*LOS MIXIMS SON COMO LAS INTERFACES CON LA DIFERENCIA DE QUE SUS MÉTODOS SON DE ACCESO DIRECTO
  //*NO ES NECESARIO VOLVER A DECLARAR CADA MÉTODO QUE HAYA EN LA INTERFACE
  //*DIRECTAMENTE SE LLAMA AL METODO DEL MIXIM
  //*SE USA LA PALABRA RESERVADA WITH
  //*SE DEBE TENER WITH ANTES DE IMPLEMENTS EN LA MISMA CLASE

  Student student1 = Student('Fiorella', 23, 'TPI');

  print(student1.toString());

  print(student1.name);
  print(student1.course);

  student1.course = 'ADIT';
  student1.name = 'Milagros';
  
  print(student1.toString());

  student1.working();

  student1.mixinExample();

}