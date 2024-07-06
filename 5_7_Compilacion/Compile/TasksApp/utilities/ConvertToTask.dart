import '../models/eTaskStatus.dart';
import '../models/Task.dart';
import 'ConvertToETaskStatus.dart';

Task ConvertToTask(String task){
  final splitTask = task.split('|');
  eTaskStatus status = ConvertToETaskStatus(splitTask[2]);
  Task aux = Task(splitTask[0], description: splitTask[1], status: status); 
  return aux;
}