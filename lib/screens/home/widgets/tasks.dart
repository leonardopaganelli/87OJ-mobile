import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:lawsuit_app/models/task.dart';

class Tasks extends StatelessWidget {
  final taskList = Task.generateTasks();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemCount: taskList.length,
            itemBuilder: (context, index) => taskList[index].title != null
                ? buildTask(context, taskList[index])
                : buildAddTask()));
  }

  Widget buildAddTask() {
    return DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(20),
        dashPattern: [10, 10],
        color: Colors.grey,
        strokeWidth: 2,
        child: Center(
          child: Text(
            '+ Add',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ));
  }

  Widget buildTask(BuildContext context, Task task) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: task.bgColor, borderRadius: BorderRadius.circular(20)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(task.iconData, color: task.iconColor, size: 35),
        SizedBox(
          height: 30,
        ),
        Text(
          task.title!,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            buildTaskStatus(
                task.btnColor!, task.iconColor!, '${task.left} left'),
            SizedBox(
              width: 5,
            ),
            buildTaskStatus(Colors.white, task.iconColor!, '${task.done} done')
          ],
        )
      ]),
    );
  }

  Widget buildTaskStatus(Color bgColor, Color textColor, String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(20)),
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
