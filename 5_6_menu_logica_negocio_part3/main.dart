import 'dart:io';
import 'controllers/removeTask.dart';
import 'controllers/watchTask.dart';
import 'controllers/addTask.dart';
void main(){
  final file = File('./Tasks.txt');
  String? choice;
  final scanner = stdin;
  
  print('#### WELCOME TO THIS APP ####');
  
  do {
    print('---- Choose an option ----');
    print('1. Add task');
    print('2. Watch task');
    print('3. Delete task');
    print('0. To close the App\n');

    bool aux;

    do {
      aux = true;
      
      choice = scanner.readLineSync(); //*muestra lo que se ingresó por consola en forma de texto que puee ser null

      if(choice != '1' && choice != '2' && choice != '3' && choice != '0'){
        aux = false;
        print('\nYour selection is not valid, try again');
      } 
    } while (!aux);

    print('\nYour choice: ${choice}');

    switch(choice){
      case '1':
        addTask(file);
        break;
      case '2':
        watchTask(file);
        break;
      case '3':
        removeTask(file);
        break;
    }

  } while (choice != '0');

  print('#### APP FINISHED ####');
  print('Thanks for using us');

}