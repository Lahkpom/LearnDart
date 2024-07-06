import 'dart:io';

import '../models/Task.dart';
import '../utilities/ConvertToTask.dart';
import '../utilities/IterateTasks.dart';
import '../utilities/ValidateName.dart';

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
            print('\nWhat is the name of the task that do you want to see?');
            String? name = scanner.readLineSync();
            int i = 0;
            name = ValidateName(name);
            content.forEach((element) {
              if (element.contains(name!)) {
                Task task = ConvertToTask(element);
                print('');
                print('Order: ${i}');
                print('Name: ${task.getName}.');
                print('Decription: ${task.getDescription}.');
                print('Status: ${task.getStatus.name}');
              }
              i++;
            });
            break;
          case '0':
            break;
          default:
            choice = '0';
            break;
        }
      } while (choice != '0');
    }else{
      throw new Exception("File doesn't exist");
    }
  } catch (e) {
    print(e.toString());
  }
}