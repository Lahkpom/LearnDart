import 'Project.dart';
import 'Task.dart';
import 'eTaskState.dart';

class Subtask extends Task implements Project{
  
  Subtask(String name, String description, eTaskState state)
    :super(name, description: description, state: state);

}