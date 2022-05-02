import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task_data.dart';

final taskData = TaskData();

class TaskListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
          itemCount: taskData.getTotalTasks(),
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskListTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkBoxCallback: (newValueCheckbox) {
                  taskData.updateTask(task);
                },
                deleteCallback: () {
                  taskData.deleteTask(index);
                });
          });
    });
  }
}
