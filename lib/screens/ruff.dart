
import 'package:flutter/material.dart';
import 'add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  String task = "dd";
  TaskScreen({task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) => AddTaskScreen() );
        },
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
                        color: Colors.blueAccent,
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
                      "12 item left",
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

class TaskListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(
          top: 60.00, left: 30.00, right: 30.00, bottom: 30.00),
      children: [
        TaskListTile(),

      ],
    );
  }
}
class TaskListTile extends StatefulWidget {
  const TaskListTile({Key? key}) : super(key: key);

  @override
  State<TaskListTile> createState() => _TaskListTileState();
}

class _TaskListTileState extends State<TaskListTile> {
  bool isChecked = false;

  void checkBoxCallback(bool? newValueCheckbox) {
    setState((){
      isChecked = newValueCheckbox!;
    });}

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("hello",style: TextStyle(
        fontSize: 20.00,
        fontWeight:  FontWeight.w600,
        letterSpacing: 1.00,
        decoration: isChecked?TextDecoration.lineThrough:null,
      ),),
      trailing: TaskCheckBox(check_box_state: isChecked,ChangeCheckBoxValue: checkBoxCallback ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  bool check_box_state = false;
  final void Function(bool?)?  ChangeCheckBoxValue;
  TaskCheckBox({required this.check_box_state, required this.ChangeCheckBoxValue});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: check_box_state,
      activeColor: Colors.lightBlueAccent,
      onChanged: ChangeCheckBoxValue,
    );
  }
}


