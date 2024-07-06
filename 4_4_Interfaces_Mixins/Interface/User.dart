import 'Person.dart';

class User extends Person{
  //*Atributos
  late String _ID;

  //*Constructor
  User(String name, int age, this._ID): 
    super(name, age);

  //*Metodos
  String toString() => '${super.toString()}, ID= ${this._ID}';

  set setID(String ID) => this._ID = ID;
  String get getID => this._ID;

  //!funciones heredadas por la interface, que pueden hacer sido declaradas en la superclase o en sus hijas
  //void programar() => print('Estoy programando');
  void compilar() => print('Estoy compilando desde subclase');

}