void main(){
  //*Operador ternario ?

  num a = 5.5;
  int b = 9;

  if(a > b){
    print('${a} es mayor a ${b}');
  }else{
    print('${b} es mayor a ${a}');
  }

  a > b ? print('${a} es mayor a ${b}') : print('${b} es mayor a ${a}');


  //*Operador is indica pertenencia
  if(a is int){
    print('a is int');
  }else{
    print('a is not int');
  }

  a is int ? print('a is int') : print('a is not int');

  //*Validar si un elemento tiene datos
  //*El oprsdor '??' nos valida si un elemento es nulo o si tiene datos
  //*Debe ir acompañado de un texto por default, que mostrará en caso de ser nulo
  //*Si no es nulo, retornará el valor de la variable
  String? h;
  dynamic i = 'Hola';

  print(h??'No posee valor');
  print(i??'No posee valor');

  
}