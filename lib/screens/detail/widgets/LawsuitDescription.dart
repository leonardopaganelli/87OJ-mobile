import 'package:flutter/material.dart';
import 'package:lawsuit_app/models/lawsuit.dart';
import 'package:intl/intl.dart';

class LawsuitDescription extends StatelessWidget {
  final Lawsuit lawsuit;
  LawsuitDescription(this.lawsuit);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${lawsuit.involved!.plaintiff!.perpetrator} X ${lawsuit.involved!.defendant!.accused}",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Icon(Icons.account_balance_rounded),
              SizedBox(
                width: 8,
              ),
              Text(
                  "${lawsuit.court!.alias} - ${lawsuit.court!.city}, ${lawsuit.court!.state}")
            ],
          ),
          Row(
            children: [
              Icon(Icons.balance_rounded),
              SizedBox(
                width: 8,
              ),
              Text("${lawsuit.nature}".toUpperCase())
            ],
          ),
          Row(
            children: [
              Icon(Icons.monetization_on_outlined),
              SizedBox(
                width: 8,
              ),
              Text("Valor da causa: ${NumberFormat.currency(
                locale: 'pt_BR',
                symbol: 'R\$',
              ).format(lawsuit.amountInControversy)} ")
            ],
          )
        ],
      ),
    );
  }
}
