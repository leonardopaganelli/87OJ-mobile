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
  List<Map<String, dynamic>>? desc;
  bool? isLast;

  Task(
      {this.iconData,
      this.title,
      this.bgColor,
      this.iconColor,
      this.btnColor,
      this.left,
      this.done,
      this.desc,
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
          done: 1,
          desc: [
            {
              'time': '9:00 am',
              'title':
                  'Julgado procedente em parte do pedido de DOUGLAS COSTA KOEHLER - CPF: XXX.425.947-XX (REQUERENTE).',
              'slot': '9:00 - 10:00 am',
              'tlColor': redDark,
              'bgColor': redLight
            },
            {
              'time': '10:00 am',
              'title': 'Shot on Dribble',
              'slot': '10:00 - 12:00 am',
              'tlColor': blueDark,
              'bgColor': blueLight
            },
            {
              'time': '11:00 am',
              'title': '',
              'slot': '',
              'tlColor': blueDark,
            },
            {
              'time': '12:00 am',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
            {
              'time': '1:00 pm',
              'title': 'Call with client',
              'slot': '1:00 - 2:00 pm',
              'tlColor': yellowDark,
              'bgColor': yellowLight
            },
            {
              'time': '2:00 pm',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
            {
              'time': '3:00 pm',
              'title': '',
              'slot': '',
              'tlColor': Colors.grey.withOpacity(0.3),
            },
          ]),
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
