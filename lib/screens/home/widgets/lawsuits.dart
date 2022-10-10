import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:lawsuit_app/constants/colors.dart';
import 'package:lawsuit_app/models/lawsuit.dart';
import 'package:lawsuit_app/screens/detail/detail.dart';

class Lawsuits extends StatelessWidget {
  final lawSuitList = Lawsuit.generateLawSuits();

  Lawsuits({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemCount: lawSuitList.length,
            itemBuilder: (context, index) => lawSuitList[index].id != null
                ? buildLawsuit(context, lawSuitList[index])
                : buildAddLawsuit()));
  }

  Widget buildAddLawsuit() {
    return DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(20),
        dashPattern: const [10, 10],
        color: Colors.grey,
        strokeWidth: 2,
        child: const Center(
          child: Text(
            '+ Adicionar',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ));
  }

  Widget buildLawsuit(BuildContext context, Lawsuit lawsuit) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => DetailScreen(lawsuit)));
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: redLight, borderRadius: BorderRadius.circular(20)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Icon(Icons.person_rounded, color: redDark, size: 35),
          const SizedBox(
            height: 30,
          ),
          Text(
            lawsuit.id!,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              buildTaskStatus(
                  red, redDark, '${lawsuit.involved!.defendant!.accused}'),
            ],
          )
        ]),
      ),
    );
  }

  Widget buildTaskStatus(Color bgColor, Color textColor, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(20)),
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
