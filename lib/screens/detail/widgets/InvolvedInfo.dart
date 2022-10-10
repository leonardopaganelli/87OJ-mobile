import 'package:flutter/material.dart';
import 'package:lawsuit_app/models/defendant.dart';
import 'package:lawsuit_app/models/involved.dart';
import 'package:lawsuit_app/models/plaintiff.dart';

class InvolvedInfo extends StatelessWidget {
  final Involved involved;
  const InvolvedInfo(this.involved, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(children: [
        buildPlaintiff(involved.plaintiff!),
        const SizedBox(
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
        const Text("POLO ATIVO",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
        const SizedBox(
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
                  style: const TextStyle(color: Colors.blue),
                ),
                const Text("Autor")
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${plaintiff.lawyer!.name}",
                  style: const TextStyle(color: Colors.blue),
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
        const Text("POLO PASSIVO",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${defendant.accused}",
                  style: const TextStyle(color: Colors.blue),
                ),
                const Text("Réu")
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${defendant.lawyer!.name}",
                  style: const TextStyle(color: Colors.blue),
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
