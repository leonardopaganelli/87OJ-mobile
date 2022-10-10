import 'package:flutter/material.dart';
import 'package:lawsuit_app/models/document.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../constants/colors.dart';
import '../../../models/date.dart';

class LawsuitTimeline extends StatelessWidget {
  final Date detail;
  const LawsuitTimeline(this.detail, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              buildTimeline(blueDark),
              Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(detail.date!),
                      Column(
                        children: [
                          ...?detail.documents
                              ?.map((document) => buildCard(document))
                              .toList()
                        ],
                      )
                    ]),
              )
            ]),
          ],
        ));
  }

  Widget buildCard(Document document) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: blueLight,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(4.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            document.label!,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            document.description!,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }

  Widget buildTimeline(Color color) {
    return SizedBox(
      width: 20,
      child: TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0.3,
        isFirst: true,
        indicatorStyle: IndicatorStyle(
            indicatorXY: 0,
            width: 15,
            indicator: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(width: 5, color: color),
              ),
            )),
        afterLineStyle: LineStyle(thickness: 2, color: color),
      ),
    );
  }
}
