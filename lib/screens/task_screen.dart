import 'package:flutter/material.dart';
import 'add_task_screen.dart';
import 'package:todo_list/widgets/task_list.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/main.dart';
import 'package:todo_list/models/task_data.dart';


class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          showModalBottomSheet(context: context, builder: (context) => AddTaskScreen());
        }),

        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.only(
                  top: 60.00, left: 30.00, right: 30.00, bottom: 30.00),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.list,
                        color: Colors.lightBlueAccent,
                        size: 40.0,
                      ),
                      backgroundColor: Colors.white,
                      maxRadius: 30.00,
                    ),
                    SizedBox(
                      height: 10.00,
                    ),
                    Text(
                      "Todoey",
                      style: TextStyle(
                        fontSize: 50.00,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "${Provider.of<TaskData>(context).getTotalTasks()} to go",
                      style: TextStyle(
                          fontSize: 18.00,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 2.00),
                    ),
                  ])),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.00),
                      topRight: Radius.circular(20.00))),
              child: TaskListView(),

            ),
          ),
        ],
      ),
    );
  }
}





