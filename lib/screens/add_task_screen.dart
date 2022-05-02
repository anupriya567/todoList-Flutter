import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  String taskText = "aad";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.00),
                topRight: Radius.circular(20.00))),
        child: Column(children: [
          const Text("Add Task",
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 50.00,fontWeight: FontWeight.w400),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              taskText = newText;
            },
          ),
          Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      print("click add task button");
                      print(taskText);
                      Provider.of<TaskData>(context,listen: false).addTasks(taskText);
                      Navigator.pop(context);
                    },
                    child: const Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
