void main(){
  //*Lista simple (otros nombres: Array o Vector)
  List lista = ['leonel', 'hidalgo', 3, true];
  print(lista);
  lista.forEach((element) {
    print(element);
  });

  //*Lista de tipos específicos de datos 
  List<String> lista2 = ['Leonel', 'Hidalgo'];
  print(lista2);
  lista2.forEach((element) {
    print(element);
  });
  List<int> lista3 = [3, 5, 6];
  print(lista3);
  lista3.forEach((element) {
    print(element);
  });

  //*Cargar una lista con un constructor (salió mal)
  List<String> meses = [];

  //*Algunas funciones
  meses.add('Enero');
  meses.add('Febrero');
  meses.add('Marzo');
  meses.add('Abril');
  meses.add('Mayo');
  meses.add('Junio');

  print(meses);

  meses.remove('Febrero');
  print(meses);
  
  meses.removeAt(3);
  print(meses);
  
  for(int i = 0; i < meses.length; i++) {
    
    if(meses[i] == 'Abril'){
      meses.removeAt(i);
    }
    print(meses[i]);
  };
}