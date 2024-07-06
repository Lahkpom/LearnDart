import 'Student.dart';
//import 'Student.dart';

void main(){

  
  Student student1 = Student('Fiorella', 23, 'TPI');

  print(student1.toString());

  print(student1.name);
  print(student1.course);

  student1.course = 'ADIT';
  student1.name = 'Milagros';
  
  print(student1.toString());

  student1.working();

}