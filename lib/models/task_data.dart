import 'package:todo_list/screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/tasks.dart';
import 'package:flutter/material.dart';
import 'dart:collection';
import 'tasks.dart';

class TaskData extends ChangeNotifier
{
  List<Task>_tasks = [
    Task(name:"dance"),
    Task(name: "exercise"),
    Task(name: "gym"),
  ];

  UnmodifiableListView<Task> get tasks
  {
    return  UnmodifiableListView(_tasks);
  }
  int getTotalTasks()
  {
    return _tasks.length;
  }
  void addTasks(String taskTitle) {
    print("task list $taskTitle");
    _tasks.add(Task(name: taskTitle));
    notifyListeners();

  }

  void updateTask(Task task)
  {
    task.toggle();
    notifyListeners();
  }

  void deleteTask(int index)
  {
    _tasks.removeAt(index);
     notifyListeners();
  }
}
