class Person{
  //*Atributos
  late String _name;
  late int _age;
  late String? _nick;
  late String _nick2;
  late String? _job;

  //*constructor
  //*Person(this._name, this._age, {String? this.nick, String this._nick2 = ''}); //*lo que está en llaves es opcional
  //*{this.nick} Si lo dejamos de esta forma y no se utiliza, la variable va a ser null
  //*Paraevitar eso, podemos generarle un valor por defecto
  //*{this.nick = ''}
  //!Los parámetros entre llaves no permite inicializar de forma directa el atributo
  //!por lo que debemos abrir el constructor y hacerlo manualmente
  Person(this._name, this._age, {String? nick, String nick2 = ''}){
    //*this._nick = nick;
    //*this._nick2 = nick2;
    this.setNick = nick;
    this.setNick2 = nick2;
  }

  String toString() => 'name=${this._name}, age=${this._age}, nick=${this._nick}, nick2=${this._nick2}, job=${this._job}';

  //*
  set setName(String name) => this._name = name;
  String get getName => this._name;
  set setAge(int age) => this._age = age;
  int get getAge => this._age;
  set setNick(String? nick) => this._nick = nick; //*apodo
  String? get getNick => this._nick;
  set setNick2(String nick2) => this._nick2 = nick2; //*apodo
  String get getNick2 => this._nick2;
  set setJob(String? job) => this._job = job;



}