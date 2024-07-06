class Person{
  //Atributos
  //*Para hacer las variables privadas se pone el prefijo '_'
  //*Las variables como string int double no pueden contener valores nuloes
  //*por lo que deben ser inicializadas en el mismo momento en que se 
  //*declaran, para evitar esto, se le agrega el sufijo '?' que hace
  //*referencia a que esa variable puede ser nula
  String? _name;
  int? _age;

  //Constructor
  Person({String? name = null, int? age = null}){
    this._name = name;
    this._age = age;
  }

  //Metodos
  String toString() => 'name:${this._name}, age:${this._age}';

  set name(String? name) => this._name = name;
  set age(int? age) => this._age = age;

  String? get name => this._name;
  int? get age => this._age;

}