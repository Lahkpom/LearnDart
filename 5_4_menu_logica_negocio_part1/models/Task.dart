import 'Project.dart';
import 'Subtask.dart';
import 'eTaskStatus.dart';

class Task implements Project{
  late String _name;
  late String? _description;
  late eTaskStatus _status;
  late List<Subtask> _subtasks;

  Task(this._name, {description = null})
  {
    this._description = description;
    this._status = eTaskStatus.UNFINISHED;
    this._subtasks = [];
  }

  String toString() => 'Name:${this._name}.\nDescription:${this._description}.\nStatus:${this._status}.';
  
  set setName(value) => this._name = value;
  set setDescription( value) => this._description = value;
  set setstatus( value) => this._status = value;
  
  get getName => this._name;
  get getDescription => this._description;
  get getstatus => this._status;
  
  @override
  void finishTask() {
    this._status = eTaskStatus.FINISHED;
  }
  
  @override
  void pauseTask() {
    this._status = eTaskStatus.PAUSED;
  }
  
  @override
  void startTask() {
    this._status = eTaskStatus.UNFINISHED;
  }

  void addSubTask(Subtask subtask) => _subtasks.add(subtask);
  void removeSubTaskForObject(Subtask subtask) => _subtasks.remove(subtask);
  void removeSubTaskForIndex(int i) => _subtasks.remove(i);
}