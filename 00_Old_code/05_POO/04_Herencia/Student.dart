
import 'Person.dart';

class Student extends Person{
  //Atributos
  late String _course;

  //Constructor
  //Student(super.name, super.age, this._course);
  Student(String name, int age, this._course):super(name, age);

  //Métodos
  String toString() => (super.toString() + ', course: ${this._course}');

  set course(String course) => this._course = course;
  String get course => this._course;
}