import 'Project.dart';
import 'Subtask.dart';
import 'eTaskState.dart';

class Task implements Project{
  late String _name;
  late String? _description;
  late eTaskState _state;
  late List<Subtask> subtasks;

  Task(this._name, {description = null, state = eTaskState.UNFINISHED})
  {
    this._description = description;
    this._state = state;
    this.subtasks = [];
  }
  
  set setName(value) => this._name = value;
  set setDescription( value) => this._description = value;
  set setState( value) => this._state = value;
  
  get getName => this._name;
  get getDescription => this._description;
  get getState => this._state;
  
  @override
  void finishTask() {
    this._state = eTaskState.FINISHED;
  }
  
  @override
  void pauseTask() {
    this._state = eTaskState.PAUSED;
  }
  
  @override
  void startTask() {
    this._state = eTaskState.UNFINISHED;
  }


  void addSubTask(Subtask subtask) => subtasks.add(subtask);
  void removeSubTaskForObject(Subtask subtask) => subtasks.remove(subtask);
  void removeSubTaskForIndex(int i) => subtasks.remove(i);
}