import 'dart:io';
import '../models/Task.dart';
void addTask(File file){
  try { 
    //NO PUDE SOLUCIONAR QUE ME HACE APRETAR EL ENTER MUCHAS VECES
    if(file.existsSync()){
      final content = file.readAsStringSync();
      final scanner = stdin;
      
      print('Name:');
      String? name = scanner.readLineSync();
      if (name == null || name.isEmpty) {
        name = 'New task'; 
      }
      
      print('Description:');
      String? description = scanner.readLineSync();
      if (description == null || description.isEmpty) {
        description = null; 
      }

      Task newTask = Task(name, description: description);

      file.writeAsStringSync(content + '\n\n' + newTask.toString()); 
      
    }else{
      throw new Exception("File doesn't exist");
    }
  } catch (e) {
    print(e.toString());
  }
}