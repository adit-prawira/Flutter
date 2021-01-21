import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;
  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: (isChecked) ? TextDecoration.lineThrough : null,
          color: Color(0xff47edb3),
          fontSize: 18,
        ),
      ),
      trailing: Checkbox(
        checkColor: Color(0xff29303f),
        activeColor: Color(0xff47edb3),
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
