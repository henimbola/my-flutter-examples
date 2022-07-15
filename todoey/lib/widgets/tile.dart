import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class Tile extends StatelessWidget {

  final String taskTitle;
  final bool isChecked;
  final int index;
  Function toggleCheckbox;

  Tile({@required this.taskTitle, @required this.isChecked, this.toggleCheckbox, @required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () => Provider.of<TaskData>(context, listen: false).deleteTask(index),
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.blueAccent,
        value: isChecked,
        onChanged: toggleCheckbox,
      ),
    );
  }
}
