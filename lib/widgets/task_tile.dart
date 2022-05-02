import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkBoxCallback;
  final void Function() deleteCallback;
  TaskListTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkBoxCallback,
      required this.deleteCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: checkBoxCallback),
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 20.00,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.00,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent)
        ),
          child: Icon(Icons.delete),
          onPressed: deleteCallback),
    );
  }
}
