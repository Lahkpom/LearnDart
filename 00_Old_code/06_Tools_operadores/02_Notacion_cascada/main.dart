import 'Student.dart';
void main(){
  Student student = Student();
  student.read();
  student.write();
  student.study();

  //*Utilizamos la notación en cascada cuando necesitamos ejecutar varios métodos
  //*de un mismo objeto
  //*No hay que cerrar la instanciación, y despues del enter ponemos '..'
  //*Solo la última instrucción en cascada lleba ';'
  //*De esta forma se ejecutan apenas se crea la instancia

  print('');

  Student student2 = Student()
  ..read()
  ..write()
  ..study();

  print(student2);
}