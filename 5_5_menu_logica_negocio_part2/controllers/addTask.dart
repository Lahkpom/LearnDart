import 'dart:io';
import '../models/Task.dart';
import '../utilities/ValidateName.dart';
void addTask(File file){
  try { 
    if(file.existsSync()){
      final content = file.readAsStringSync();
      final scanner = stdin;
      
      print('Name:');
      String? name = scanner.readLineSync();
      name = ValidateName(name);
      
      print('Description:');
      String? description = scanner.readLineSync();
      if (description == null || description.isEmpty) {
        description = null; 
      }

      Task newTask = Task(name, description: description);

      file.writeAsStringSync(content + '\n' + newTask.toString()); 
      
    }else{
      throw new Exception("File doesn't exist");
    }
  } catch (e) {
    print(e.toString());
  }
}