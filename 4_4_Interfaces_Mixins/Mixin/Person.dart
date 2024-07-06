import 'mAfiliado.dart';

abstract class Person with mAfiliado{
  //!Para usar un mixin usamos la palabra with, y no se pueden usar junto con los implements

  //*Atributos
  late String _name;
  late int _age;
  String? _nick;
  late String _nick2;
  String? _job;
  
  Person(this._name, this._age, {String? nick, String nick2 = ''}){
    
    this.setNick = nick;
    this.setNick2 = nick2;
  }

  String toString() => 'name=${this._name}, age=${this._age}, nick=${this._nick}, nick2=${this._nick2}, job=${this._job}';

  
  set setName(String name) => this._name = name;
  String get getName => this._name;
  set setAge(int age) => this._age = age;
  int get getAge => this._age;
  set setNick(String? nick) => this._nick = nick; 
  String? get getNick => this._nick;
  set setNick2(String nick2) => this._nick2 = nick2;
  String get getNick2 => this._nick2;
  set setJob(String? job) => this._job = job;

  

}