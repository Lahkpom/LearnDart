import 'Person.dart';

class User extends Person{
  //*Atributos
  late String _ID;

  //*Constructor
  User(String name, int age, this._ID): 
    super(name, age);

  //*Propiedades
  String toString() => '${super.toString()}, ID= ${this._ID}';

  set setID(String ID) => this._ID = ID;
  String get getID => this._ID;

}