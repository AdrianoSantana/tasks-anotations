import 'package:flutter/material.dart';
import 'package:tasks_anotations/components/list_tasks.dart';
import 'package:tasks_anotations/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Utils.createStartAndFinishDateWeek(),
        ),
      ),
      body: const ListTasks(),
    );
  }
}
