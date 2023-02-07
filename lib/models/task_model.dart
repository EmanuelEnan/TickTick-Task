import 'package:flutter/material.dart';

class TaskModel {
  Icon? taskIcon;
  String? taskTitle;
  String? taskDate;

  TaskModel({this.taskIcon, this.taskDate, this.taskTitle});
}

List allTask = [
  TaskModel(
    taskIcon: const Icon(
      Icons.task_rounded,
      color: Colors.yellow,
      size: 30,
    ),
    taskDate: 'Save Date: 10/12/2022',
    taskTitle: 'Online Class Routine',
  ),
  TaskModel(
    taskIcon: const Icon(
      Icons.task_rounded,
      color: Colors.yellow,
      size: 30,
    ),
    taskDate: 'Save Date: 10/12/2022',
    taskTitle: 'Online Class Routine',
  ),
  TaskModel(
    taskIcon: const Icon(
      Icons.task_rounded,
      color: Colors.yellow,
      size: 30,
    ),
    taskDate: 'Save Date: 10/12/2022',
    taskTitle: 'Online Class Routine',
  ),
  TaskModel(
    taskIcon: const Icon(
      Icons.task_rounded,
      color: Colors.yellow,
      size: 30,
    ),
    taskDate: 'Save Date: 10/12/2022',
    taskTitle: 'Online Class Routine',
  ),
  TaskModel(
    taskIcon: const Icon(
      Icons.task_rounded,
      color: Colors.yellow,
      size: 30,
    ),
    taskDate: 'Save Date: 10/12/2022',
    taskTitle: 'Online Class Routine',
  ),
];
