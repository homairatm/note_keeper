import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  TasksTile({this.isChecked, this.checkboxCallback, this.longPressCallback, this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23.0,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.green[700],
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
