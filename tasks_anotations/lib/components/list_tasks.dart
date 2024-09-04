import 'package:flutter/material.dart';
import 'package:tasks_anotations/components/task_card.dart';
import 'package:tasks_anotations/utils/utils.dart';

class ListTasks extends StatelessWidget {
  const ListTasks({super.key});

  List<Widget> createTaskList(int days) {
    List<Widget> result = [];
    for (var index = 0; index < days; index++) {
      result.add(
        TaskCard(
          date: DateTime.now().add(Duration(days: index)),
        ),
      );
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    Map<String, DateTime> dates = Utils.getStartAndFinishDateWeek();
    int differenceInDays = 7;
    if (dates['start'] != null && dates['end'] != null) {
      differenceInDays = dates['end']!.difference(dates['start']!).inDays;
    }

    var listTasks = createTaskList(differenceInDays);

    return ListView(
      children: listTasks,
    );
  }
}
