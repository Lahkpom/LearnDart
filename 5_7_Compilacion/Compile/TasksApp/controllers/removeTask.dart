import 'dart:io';

import '../utilities/IterateTasks.dart';

void removeTask(File file){
  try { 
    if(file.existsSync()){
      final content = file.readAsLinesSync();
      final scanner = stdin;
      String? choice = '0';
      do {
        print('\nWhat is the order task that do you want to remove?');
        IterateTasks(content);
        print('0. CANCEL!!!.');
        print('999. REMOVE ALL!!!.\n');

        bool aux = true;
        int i = 0; 
        do {
          choice = scanner.readLineSync();

          try {
            i = int.parse(choice!);
          } catch (e) {
            print('\nTHE INPUT MOST BE AN INTEGER');
          }

          if(i == 999){
            continue;
          }else if(i < 0 || i > (content.length - 1)){
            aux = false;
            print('\nYour selection is not valid, try again');
          }
        } while (!aux);

        switch (i) {
          case 0:
            break;
          case 999:
            content.removeRange(1, content.length);
            break;
          default:
            
            content.removeAt(i);
            break;
        }
      
        file.writeAsStringSync(content.join('\n'));
      } while (choice != '0');
    }else{
      throw new Exception("File doesn't exist");
    }
  } catch (e) {
    print(e.toString());
  }
}