import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:lawsuit_app/models/lawsuit.dart';

class GeneralInfo extends StatelessWidget {
  final Lawsuit lawsuit;
  const GeneralInfo(this.lawsuit, {super.key});

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting("pt_BR", null);

    return Container(
      padding: const EdgeInsets.all(15),
      child: ListView(children: [
        Text(
            "O processo teve origem no ${lawsuit.court!.name}, em ${DateFormat.yMMMd().format(DateTime.parse(lawsuit.initDate!))}."),
        const SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.account_balance_rounded),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Tribunal de Origem",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                    "${lawsuit.court!.alias} · Comarca · ${lawsuit.court!.city}, ${lawsuit.court!.state}")
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.balance_rounded),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Assunto",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(lawsuit.subjects!.join(" / "))
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.event_rounded),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Início do Processo",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(DateFormat.y().format(DateTime.parse(lawsuit.initDate!)))
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.monetization_on_outlined),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Valor da Causa",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(NumberFormat.currency(
                  locale: 'pt_BR',
                  symbol: 'R\$',
                ).format(lawsuit.amountInControversy))
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.info_outline_rounded),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Natureza", style: TextStyle(fontSize: 18)),
                const SizedBox(
                  height: 6,
                ),
                Text(lawsuit.nature!.toUpperCase())
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.domain_rounded),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Poder Judiciário",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text("${lawsuit.judicialBranch}")
              ],
            )
          ],
        ),
      ]),
    );
  }
}
