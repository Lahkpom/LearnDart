abstract class Person{
  //Atributos
  late String _name;
  late int _age;

  //Constructor
  Person(this._name, this._age);

  //Metodos
  String toString() => 'name: ${this._name}, age: ${this._age}';

  set name(String name) => this._name = name;
  set age(int age) => this._age = age;

  String get name => this._name;
  int get age => this._age;
}