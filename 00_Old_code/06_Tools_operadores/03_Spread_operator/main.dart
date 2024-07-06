void main(){
  List<int> evenNumbers = [2, 4, 6, 8, 10];
  List<int> oddNumbers = [1, 3, 5, 7, 9];

  List<int> numbers = [];

  numbers.addAll(evenNumbers);
  numbers.addAll(oddNumbers);
  print(numbers);
  print('');
  //*Centralizar acciones dentro de las listas
  //*realizar esa acción dentro de la misma creación de la lista
  //*Se llama a esa operación con '...'

  List<int> spread = [
    ...evenNumbers,
    ...oddNumbers,
    //*Incluso puedo agregar más valores de forma directa
    11, 12, 13, 14, 15
  ];

  print(spread);

  //*Lo que yo modifique no se modifica en la lista original
  print('');
  spread[0] = 90;

  print(spread);
  print(numbers);

  //*ciclos dentro del cuerpo del Array
  //*El if condiciona a la orden que sigue (no se puede usar else)
  print('');

  List<int> spread2 = [
    ...evenNumbers,
    if(oddNumbers.length > 5)
    ...oddNumbers,
    11, 12, 13, 14, 15
  ];
  
  List<int> spread3 = [
    ...evenNumbers,
    if(oddNumbers.length > 4)
    ...oddNumbers,
    11, 12, 13, 14, 15
  ];

  print(spread2);
  print(spread3);
  print('');

  //*Así se agregan elementos con for for

  List<int> spread4 = [
    ...oddNumbers,
    for(int i = 0; i < evenNumbers.length; i ++)
      if(evenNumbers[i] > 5)
        evenNumbers[i],
    11, 12, 13, 14, 15
  ];
  print(spread4);
  print('');
}