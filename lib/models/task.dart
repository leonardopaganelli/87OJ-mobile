import 'package:flutter/material.dart';
import 'package:lawsuit_app/constsnts/colors.dart';

class Task {
  IconData? iconData;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  num? done;
  bool? isLast;

  Task(
      {this.iconData,
      this.title,
      this.bgColor,
      this.iconColor,
      this.btnColor,
      this.left,
      this.done,
      this.isLast = false});

  static List<Task> generateTasks() {
    return [
      Task(
          iconData: Icons.person_rounded,
          title: 'Personal',
          bgColor: yellowLight,
          iconColor: yellowDark,
          btnColor: yellow,
          left: 3,
          done: 1),
      Task(
          iconData: Icons.cases_rounded,
          title: 'Work',
          bgColor: redLight,
          iconColor: redDark,
          btnColor: red,
          left: 0,
          done: 0),
      Task(
          iconData: Icons.favorite_rounded,
          title: 'Health',
          bgColor: blueLight,
          iconColor: blueDark,
          btnColor: blue,
          left: 0,
          done: 0),
      Task(isLast: true)
    ];
  }
}
