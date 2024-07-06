import 'dart:io';
import 'controllers/addTask.dart';
void main(){
  final file = File('./Tasks.txt');
  
  print('#### WELCOME TO THIS APP ####');
  print('---- Choose an option ----');
  print('1. Add task');
  print('2. Watch task');
  print('3. Delete task');

  String? choice;
  bool aux;
  
  do {
    aux = true;
    //*Le solicitamos al usuario que ingrese texto 
    final input = stdin; //*standar input toma lo que se ingresa por consola
    choice = input.readLineSync(); //*muestra lo que se ingresó por consola en forma de texto que puee ser null
    
    if(choice != '1' && choice != '2' && choice != '3'){
      aux = false;
      print('Your selection is not valid, try again');
    } 
  } while (aux == false);

  print('\nYour choice: ${choice}');

  switch(choice){
    case '1':
      addTask(file);
      break;
    case '2':
      print('watch');
      break;
    case '3':
      print('delete');
      break;
  }

  print('#### APP FINISHED ####');
  print('Thanks for using us');

}