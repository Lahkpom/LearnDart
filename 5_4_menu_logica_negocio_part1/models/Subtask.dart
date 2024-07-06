import 'Project.dart';
import 'Task.dart';
class Subtask extends Task implements Project{
  
  Subtask(String name, String description)
    :super(name, description: description);

}