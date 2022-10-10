import 'package:flutter/material.dart';
import 'package:lawsuit_app/models/lawsuit.dart';
import 'package:intl/intl.dart';

class LawsuitDescription extends StatelessWidget {
  final Lawsuit lawsuit;
  // ignore: prefer_const_constructors_in_immutables
  LawsuitDescription(this.lawsuit, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${lawsuit.involved!.plaintiff!.perpetrator} X ${lawsuit.involved!.defendant!.accused}",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const Icon(Icons.account_balance_rounded),
              const SizedBox(
                width: 8,
              ),
              Text(
                  "${lawsuit.court!.alias} - ${lawsuit.court!.city}, ${lawsuit.court!.state}")
            ],
          ),
          Row(
            children: [
              const Icon(Icons.balance_rounded),
              const SizedBox(
                width: 8,
              ),
              Text("${lawsuit.nature}".toUpperCase())
            ],
          ),
          Row(
            children: [
              const Icon(Icons.monetization_on_outlined),
              const SizedBox(
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
