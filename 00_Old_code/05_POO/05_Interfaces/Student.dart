import 'Person.dart';
import 'Work.dart';


class Student extends Person implements Work{
  //Atributos
  late String _course;

  //Constructor
  //Student(super.name, super.age, this._course);
  Student(String name, int age, this._course):super(name, age);

  //Métodos
  set course(String course) => this._course = course;
  String get course => this._course;
  
  String toString() => (super.toString() + ', course: ${this._course}');

  void working() => print("I'm working!");
}