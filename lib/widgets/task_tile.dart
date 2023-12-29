import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget  {
  bool? isChecked;
  String? taskTitle;
  void Function(bool?)? checkboxCallback;
  void Function()? longPressCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(taskTitle!,
          style: TextStyle(
              decoration: isChecked! ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      )
    );
  }
}



