import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Eggs'),
  ];

  void addTask(String name) {
    tasks.add(Task(name: name));
    notifyListeners();
  }

  void checkTask(int index) {
    tasks[index].toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }
}