void main(){
  //*Este tipo de dato se almacena junto con una llave unica que la identifica
  //*Se debe poner entre diamantes dos datos, el tipo de dato de la llave
  //*Y el tipo de dato a almacenar
  //*Se lo inicializa con su constructor
  Map<String, String> aux = Map<String, String>();

  //*Entre corchetes va la llave
  aux['numero'] = 'uno';


  //*cuando lo llamamos, lo hacemos con su llave
  print(aux['numero']);


  //*Inicializarlo manualmente
  Map<int, String> aux2 = {
    1: 'Lunes',
    2: 'Martes',
    3: 'Miercoles',
    4: 'Jueves',
    5: 'Viernes',
    6: 'Sabado',
    7: 'Domingo'
  };

  print(aux2);
  print(aux2[4]);
  
  aux2[5] = 'jakjfdjds';
  print(aux2);
  
  aux2[10] = 'shdjfbk';
  print(aux2);
}