import 'package:flutter/foundation.dart';
import './task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Workout'),
    Task(name: 'Shopping')
  ];

  int get taskCount {
    //getter
    return tasks.length;
  }
}
