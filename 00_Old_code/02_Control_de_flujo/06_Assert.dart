void main(){
  //Validar si una variable cumple una regla en especíco
  int num1 = 10;
  assert(num1 > 5);
  print('El assert se cumple');

  //En consola se debe usar "dart --enable-asserts 06.Assert.dart"
  //Es solo de control en desarrollo, no afecta el proceso del código
  //Cuando se coore normalmente.
  //Si el assert no es correcto, dará un detalle de qué es lo que no se cumple
}