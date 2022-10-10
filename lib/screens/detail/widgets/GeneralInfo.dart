import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:lawsuit_app/models/defendant.dart';
import 'package:lawsuit_app/models/involved.dart';
import 'package:lawsuit_app/models/lawsuit.dart';
import 'package:lawsuit_app/models/plaintiff.dart';

class GeneralInfo extends StatelessWidget {
  final Lawsuit lawsuit;
  GeneralInfo(this.lawsuit);

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting("pt_BR", null);

    return Container(
      child: Column(children: [
        Text(
            "O processo teve origem no ${lawsuit.court!.name}, em ${DateFormat.yMMMd().format(DateTime.parse(lawsuit.initDate!))}."),
        SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Icon(Icons.account_balance_rounded),
            Row(
              children: [
                Text("Tribunal de Origem"),
                Text(
                    "${lawsuit.court!.alias} · Comarca · ${lawsuit.court!.city}, ${lawsuit.court!.state}")
              ],
            )
          ],
        ),
        Column(
          children: [
            Icon(Icons.balance_rounded),
            Row(
              children: [
                Text("Assunto"),
                Text("${lawsuit.subjects!.join(" / ")}")
              ],
            )
          ],
        ),
        Column(
          children: [
            Icon(Icons.event_rounded),
            Row(
              children: [
                Text("Início do Processo"),
                Text(
                    "${DateFormat.y().format(DateTime.parse(lawsuit.initDate!))}")
              ],
            )
          ],
        ),
        Column(
          children: [
            Icon(Icons.monetization_on_outlined),
            Row(
              children: [
                Text("Valor da Causa"),
                Text(NumberFormat.currency(
                  locale: 'pt_BR',
                  symbol: 'R\$',
                ).format(lawsuit.amountInControversy))
              ],
            )
          ],
        ),
        Column(
          children: [
            Icon(Icons.info_outline_rounded),
            Row(
              children: [Text("Natureza"), Text(lawsuit.nature!.toUpperCase())],
            )
          ],
        ),
        Column(
          children: [
            Icon(Icons.domain_rounded),
            Row(
              children: [
                Text("Poder Judiciário"),
                Text("${lawsuit.judicialBranch}")
              ],
            )
          ],
        ),
      ]),
    );
  }
}
