import 'Project.dart';
import 'Subtask.dart';
import 'eTaskStatus.dart';

class Task implements Project{
  late String _name;
  late String? _description;
  late eTaskStatus _status;
  late List<Subtask> _subtasks;

  Task(this._name, {description = null, status = eTaskStatus.UNFINISHED})
  {
    this._description = description;
    this._status = status;
    this._subtasks = [];
  }

  String toString() => '${this._name}|${this._description}|${this._status}';
  

  set setName(String value) => this._name = value;
  set setDescription(String? value) => this._description = value;
  set setstatus(eTaskStatus value) => this._status = value;
  
  String get getName => this._name;
  String? get getDescription => this._description;
  eTaskStatus get getStatus => this._status;
  //String get getStatusName => this._status.name;
  
  
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