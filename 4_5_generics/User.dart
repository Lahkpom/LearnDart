class User <T>{
  //*Los genéricos se declaran con un elemento (por lo general una T) entre diamantes
  //*Y se le coloca ese tipo a la variable en lugar de los normales
  //*De esta forma, cada vez que genere un nuevo usuario puedo especificar el tipo de 
  //*dato que quiero que contenga cada variable
  late T _name;
  late T _nick;

  User(this._name, this._nick);

  T get getName => this._name;
  T get getNick => this._nick;


}