import 'package:flutter/material.dart';
import 'package:lawsuit_app/models/lawsuit.dart';
import 'package:lawsuit_app/screens/detail/widgets/DatePicker.dart';
import 'package:lawsuit_app/screens/detail/widgets/TaskTitle.dart';
import 'package:lawsuit_app/screens/detail/widgets/taskTimeline.dart';
import '../../models/task.dart';

class DetailScreen extends StatelessWidget {
  final Lawsuit lawsuit;
  DetailScreen(this.lawsuit);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            buildAppBar(context),
            SliverToBoxAdapter(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [DatePicker(), TaskTitle()],
                ),
              ),
            ),
            // detailList == null
            //     ? SliverFillRemaining(
            //         child: Container(
            //             color: Colors.white,
            //             child: Center(
            //                 child: Text(
            //               "No task today",
            //               style: TextStyle(color: Colors.grey, fontSize: 18),
            //             ))),
            //       )
            //     : SliverList(
            //         delegate: SliverChildBuilderDelegate(
            //             (_, index) => TaskTimeline(detailList[index]),
            //             childCount: detailList.length),
            //       )
          ],
        ));
  }

  Widget buildAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 90,
      backgroundColor: Colors.black,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(Icons.arrow_back_ios),
        iconSize: 20,
      ),
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${lawsuit.involved!.plaintiff!.perpetrator} x ${lawsuit.involved!.defendant!.accused}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Processo nº ${lawsuit.id}',
              style: TextStyle(fontSize: 12, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
