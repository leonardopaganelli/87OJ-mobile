import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lawsuit_app/constants/colors.dart';
import 'package:lawsuit_app/models/defendant.dart';
import 'package:lawsuit_app/models/involved.dart';
import 'package:lawsuit_app/models/plaintiff.dart';

class InvolvedInfo extends StatelessWidget {
  final Involved involved;
  InvolvedInfo(this.involved);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(children: [
        buildPlaintiff(involved.plaintiff!),
        SizedBox(
          height: 30,
        ),
        buildDefendant(involved.defendant!)
      ]),
    );
  }

  Widget buildPlaintiff(Plaintiff plaintiff) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("POLO ATIVO",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${plaintiff.perpetrator}",
                  style: TextStyle(color: Colors.blue),
                ),
                Text("Autor")
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${plaintiff.lawyer!.name}",
                  style: TextStyle(color: Colors.blue),
                ),
                Text("Advogado envolvido • ${plaintiff.lawyer!.id}")
              ],
            )
          ],
        )
      ],
    );
  }

  Widget buildDefendant(Defendant defendant) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("POLO PASSIVO",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "${defendant.accused}",
                  style: TextStyle(color: Colors.blue),
                ),
                Text("Réu")
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${defendant.lawyer!.name}",
                  style: TextStyle(color: Colors.blue),
                ),
                Text("Advogado envolvido • ${defendant.lawyer!.id}")
              ],
            )
          ],
        )
      ],
    );
  }
}
