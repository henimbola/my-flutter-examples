import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/tile.dart';

class ListContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tasksProvider = Provider.of<TaskData>(context);
    return ListView.builder(
      itemBuilder: (context, index) {
        return Tile(
          index: index,
          taskTitle: tasksProvider.tasks[index].name,
          isChecked: tasksProvider.tasks[index].isDone,
          toggleCheckbox: (checkBoxValue) {
            tasksProvider.checkTask(index);
          },
        );
      },
      itemCount: tasksProvider.tasks.length,
    );
  }
}