import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
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
              '  12 Tasks',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
