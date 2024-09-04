import 'package:flutter/material.dart';
import 'package:tasks_anotations/components/task_detail_display.dart';
import 'package:tasks_anotations/models/task_detail.dart';
import 'package:tasks_anotations/utils/utils.dart';

class TaskCard extends StatelessWidget {
  final DateTime date;
  const TaskCard({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: 120,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      date.day.toString().padLeft(2, '0'),
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      Utils.getWeekDay(date.day),
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: SizedBox(
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TaskDetailDisplay(
                          taskDetail: TaskDetail(
                            '[Fix - Busca Avançada] Ajustes com johanny',
                            true,
                          ),
                        ),
                        TaskDetailDisplay(
                          taskDetail: TaskDetail(
                            '[Refactor - Socket] Task: 5099',
                            false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
