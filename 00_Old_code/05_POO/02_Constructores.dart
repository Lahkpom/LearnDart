void main(){
  Person persona = Person(name: 'Fiorella', age: 23);
  print(persona.toString());
  Person persona2 = Person.nameOnly('Fiorella');
  print(persona2.toString());
  Person persona3 = Person.ageOnly(23);
  print(persona3.toString());
  Person persona4 = Person(name: 'Milagros');
  print(persona4.toString());
}

class Person{
  //Atributos
  var name;
  var age;

  //Constructor
  //*Solo permite UN constructor por defectro
  Person({String name = '', int age = 0}){
    this.name = name;
    this.age = age;
  }

  //?Otra opcion es poner los parametros variables
  /*
  *Person({String name = '', int age = 0}){
  *  this.name = name;
  *  this.age = age;
  *}
  */
  //*Para poder usar otros constructores con distintos parámetros
  //*Se usa un metodo de 'fabrica' factory
  //* factory Person.nombreMetodo(parametro)
  factory Person.nameOnly(String name) => Person(name: name, age: 0);
  
  factory Person.ageOnly(int age) => Person(name: '', age: age);
  

  //Metodos
  String toString() => ('name:${this.name}, age:${this.age}');

  
}