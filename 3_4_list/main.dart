void main(){
  //*listas
  final names = ['Alvaro', 'Ariel', 'Rodrigo', 'Fernando'];
  final numbers = [100, 41, 63, 1563, 421, 52, 53, 123, 53];

  //!funciones integradasç
  //*forEach
  forEachfunction(names);
  print('');
  forEachfunction(numbers);
  print('');

  //*add

  names.add('New');
  numbers.add(0);

  forEachfunction(names);
  print('');
  forEachfunction(numbers);
  print('');
  
  //*remove

  names.remove('Rodrigo');
  numbers.remove(53);
  
  forEachfunction(names);
  print('');
  forEachfunction(numbers);
  print('');

  //*map
  //*map es una funcion felcha que lo que hace es devolvernos una nueva lista a la cual se le realizaron modificaciones con respecto a la primera
  //*por ejemplo podemos sumar 1 a cada valor de la lista de números
  //* numbers.map((e) => null);  este es le formato original
  final mapNumbers = numbers.map((e) => (e + 1));
  forEachfunction(mapNumbers);
  print('');

  //*where - es un filtro
  //*crea una nueva lista que contiene solo los valores que cumplen con cierto criterio
  //* numbers.where((element) => false); este es el formato original
  final whereNumbers = numbers.where((element) => element >= 100);
  forEachfunction(whereNumbers);
}

void forEachfunction(final a){
  a.forEach((element) {
    print(element);
  });
}