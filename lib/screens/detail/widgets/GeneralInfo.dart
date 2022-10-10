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
      padding: EdgeInsets.all(15),
      child: ListView(children: [
        Text(
            "O processo teve origem no ${lawsuit.court!.name}, em ${DateFormat.yMMMd().format(DateTime.parse(lawsuit.initDate!))}."),
        SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.account_balance_rounded),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tribunal de Origem",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                    "${lawsuit.court!.alias} · Comarca · ${lawsuit.court!.city}, ${lawsuit.court!.state}")
              ],
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.balance_rounded),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Assunto",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 6,
                ),
                Text("${lawsuit.subjects!.join(" / ")}")
              ],
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.event_rounded),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Início do Processo",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                    "${DateFormat.y().format(DateTime.parse(lawsuit.initDate!))}")
              ],
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.monetization_on_outlined),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Valor da Causa",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
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
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Icon(Icons.info_outline_rounded),
            Row(
              children: [Text("Natureza"), Text(lawsuit.nature!.toUpperCase())],
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.domain_rounded),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Poder Judiciário",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
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
