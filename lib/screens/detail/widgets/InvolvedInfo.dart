import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lawsuit_app/models/defendant.dart';
import 'package:lawsuit_app/models/involved.dart';
import 'package:lawsuit_app/models/plaintiff.dart';

class InvolvedInfo extends StatelessWidget {
  final Involved involved;
  InvolvedInfo(this.involved);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        buildPlaintiff(involved.plaintiff!),
        buildDefendant(involved.defendant!)
      ]),
    );
  }

  Widget buildPlaintiff(Plaintiff plaintiff) {
    return Column(
      children: [
        Text("POLO ATIVO"),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Column(
              children: [Text("${plaintiff.perpetrator}"), Text("Autor")],
            ),
            Column(
              children: [
                Text("${plaintiff.lawyer!.name}"),
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
      children: [
        Text("POLO PASSIVO"),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Column(
              children: [Text("${defendant.accused}"), Text("Réu")],
            ),
            Column(
              children: [
                Text("${defendant.lawyer!.name}"),
                Text("Advogado envolvido • ${defendant.lawyer!.id}")
              ],
            )
          ],
        )
      ],
    );
  }
}
