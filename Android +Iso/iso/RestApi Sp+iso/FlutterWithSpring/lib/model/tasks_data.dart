import 'package:flutter/cupertino.dart';
import 'package:flutterwithspring/model/task.dart';
import 'package:flutterwithspring/service/database_services.dart';


// its is like DAO
class Taskdata extends ChangeNotifier {
  List<Task> tasks = []; /// ata dorkar hoy sathe sathe recent value ta view korar jonne

  void addTask(String ttitle) async {
    Task task = await DatabaseServices.addTask(ttitle);
    tasks.add(task); // ata comment korle o database a data jay
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggle();
    DatabaseServices.updateTask(task.id);
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    DatabaseServices.deleteTask(task.id);
    notifyListeners();
  }

}
