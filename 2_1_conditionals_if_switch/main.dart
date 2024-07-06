import 'EDay.dart';

void main(){
  //*Condicionales

  //*if
  if(10>5){
    print('10 es mayor a 5');
  } else if (5<10){
    print('5 es menor a 10');
  } else{
    print('bla bla bla');
  }

  //*switch
  EDay day = EDay.MONDAY;

  switch(day){
    case EDay.MONDAY:
      print('Monday');
      break;
    case EDay.TUESDAY:
      print('Tuesday');
      break;
    case EDay.WEDNSDAY:
      print('Wednesday');
      break;
    case EDay.THURSDAY:
      print('Thursday');
      break;
    case EDay.FRIDAY:
      print('Friday');
      break;
    case EDay.SATURDAY || EDay.SUNDAY: //!ES POSIBLE PONER UN OR DENTRO DEL CASE PARA VALORES CON EL MISMO RESULTADO
      print('Weekend');
      break;
    default:
      print('The number ${day} is not a day');
  }




}