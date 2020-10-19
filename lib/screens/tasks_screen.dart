import 'package:flutter/material.dart';

import '../widgets/tasks_list.dart';
import './add_task_screen.dart';

import 'package:provider/provider.dart';
import '../models/task_data.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (ctx) => AddTaskScreen((newTaskTitle) {
              // print(newTaskTitle);
              // setState(() {
              //   tasks.add(Task(name: newTaskTitle));
              // });
              Navigator.pop(context);
            }),
          );
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 60,
                bottom: 30,
                left: 30,
                right: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(
                      Icons.list,
                      color: Colors.lightBlueAccent,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '  ${Provider.of<TaskData>(context).taskCount} Tasks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: TaskList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
