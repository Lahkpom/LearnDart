import 'dart:io';

import '../models/Task.dart';
import '../utilities/ConvertToInt.dart';
import '../utilities/ConvertToTask.dart';
import '../utilities/IterateTasks.dart';

void watchTask(File file){
  try { 
    if(file.existsSync()){
      final content = file.readAsLinesSync();
      final scanner = stdin;
      String? choice;
      do {
        print('\nWhat do you want to see?');
        print('1. I want to see all tasks.');
        print('2. I want to see an specific task.');
        print('0. I want to back.\n');

        choice = scanner.readLineSync();

        bool aux;
        do {
          aux = true;
          if(choice != '1' && choice != '2' && choice != '0'){
          aux = false;
          print('\nYour selection is not valid, try again');
        }
        } while (!aux);

        switch (choice) {
          case '1':
            IterateTasks(content);
            break;
          case '2':
            print('\nWhat is the order task that do you want to see?');
            print('0. CANCEL!!!.');
            String? choice2;
            bool aux2;
            int i = 0; 
            do {
              aux2 = true;
              
              choice2 = scanner.readLineSync();
              i = ConvertToInt(choice2);
              
              if(i == 999){
                continue;
              }else if(i < 0 || i > (content.length - 1)){
                aux2 = false;
                print('\nYour selection is not valid, try again (between 0 and ${content.length - 1})');
              }
            } while (!aux2);
            
            if(i != 0){
              Task task = ConvertToTask(content[i]);
              print('');
              print('Order: ${i}');
              print('Name: ${task.getName}.');
              print('Decription: ${task.getDescription}.');
              print('Status: ${task.getStatus.name}');
            }
        }
      } while (choice != '0');
    }else{
      throw new Exception("File doesn't exist");
    }
  } catch (e) {
    print(e.toString());
  }
}