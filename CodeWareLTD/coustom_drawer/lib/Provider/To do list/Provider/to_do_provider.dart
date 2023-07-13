import 'package:coustom_drawer/Provider/To%20do%20list/model/todo_model.dart';
import 'package:flutter/cupertino.dart';

class ToDoProvider extends ChangeNotifier {
  final List<ToDoModel> _todoList = [];
  List<ToDoModel> get allToDoList => _todoList;
  void addToDoList(ToDoModel toDoModel) {
    _todoList.add(toDoModel);
    notifyListeners();
    print('addToDoList');
  }

  void toDoStatsChange(ToDoModel toDoModel) {
    final index = _todoList.indexOf(toDoModel);
    _todoList[index].isCompleted();
    print('toDoStatsChange');
  }

  void removeToDoList(ToDoModel toDoModel) {
    final index = _todoList.indexOf(toDoModel);
    _todoList.remove(index);
    notifyListeners();
    print('removeToDoList');
  }
}
