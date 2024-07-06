//import 'dart:js_interop';

void main(){
  //*Almacenan cualquier tipo de dato pero no pueden ser datos duplicados

  //*instanciarlo con el constructor
  Set<String> meses = Set<String>();

  meses.add('enero');
  meses.add('febrero');
  meses.add('marzo');
  meses.add('abril');
  meses.add('mayo');
  meses.add('junio');

  print(meses);

  meses.add('enero');

  print(meses);

  //*inicializarlo manualmente

  Set<String> dias = {'lunes', 'martes', 'miercoles', 'jueves', 'viernes', 'sabado', 'domingo'};

  print(dias);

  Set<String> dias2 = Set<String>();

  dias2.addAll(dias);

  print(dias2);

  print(dias2.isEmpty);
  print(dias2.isNotEmpty);
  print(dias2.first);
  print(dias2.length);
  //print(dias2.iterator);
  //print(dias2.firstOrNull);
  print(dias2.indexed);
  print(dias2.last);
  //print(dias2.single);
  //print(dias2.runtimeType);
  //print(dias2.isNull);
  print(dias2);
  



}