import 'package:flutter/material.dart';
import 'package:tasks_anotations/models/task_detail.dart';

class TaskDetailDisplay extends StatelessWidget {
  final TaskDetail taskDetail;
  const TaskDetailDisplay({super.key, required this.taskDetail});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      taskDetail.detail,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w900,
        color: taskDetail.finished == true ? Colors.green : Colors.red,
      ),
    );
  }
}
