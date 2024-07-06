class User2 <T, R>{
  //*Es posible tener màs de un tipo de dato genérico, agregando una nueva letra en los diamántes
  //*Indicando en los atributos qué tipo le corresponde a cada variable
  late T _name;
  late T _nick;
  late R _age;

  User2(this._name, this._nick, this._age);

  T get getName => this._name;
  T get getNick => this._nick;
  R get getAge => this._age;

}