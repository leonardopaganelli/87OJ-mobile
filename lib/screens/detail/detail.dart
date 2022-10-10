import 'package:flutter/material.dart';
import 'package:lawsuit_app/models/lawsuit.dart';
import 'package:lawsuit_app/screens/detail/widgets/DatePicker.dart';
import 'package:lawsuit_app/screens/detail/widgets/GeneralInfo.dart';
import 'package:lawsuit_app/screens/detail/widgets/InvolvedInfo.dart';
import 'package:lawsuit_app/screens/detail/widgets/LawsuitDescription.dart';
import 'package:lawsuit_app/screens/detail/widgets/LawsuitTimeline.dart';
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
                child: LawsuitDescription(lawsuit),
              ),
            ),
            SliverFillRemaining(
                child: Container(
              color: Colors.white,
              child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                    automaticallyImplyLeading: false,
                    // ignore: prefer_const_literals_to_create_immutables
                    actions: [
                      const TabBar(
                        isScrollable: true,
                        tabs: [
                          Tab(text: "Linha do tempo"),
                          Tab(text: "Informações gerais"),
                          Tab(text: "Envolvidos"),
                        ],
                      ),
                    ],
                  ),
                  body: TabBarView(
                    children: [
                      ListView(
                        children: [
                          ...?lawsuit.timeLine
                              ?.map((date) => LawsuitTimeline(date))
                              .toList()
                        ],
                      ),
                      GeneralInfo(lawsuit),
                      InvolvedInfo(lawsuit.involved!),
                    ],
                  ),
                ),
              ),
            ))
            // lawsuit.timeLine == null
            //     ? SliverFillRemaining(
            //         child: Container(
            //             color: Colors.white,
            //             child: const Center(
            //                 child: Text(
            //               "Sem histórico",
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
              '${lawsuit.involved!.defendant!.accused}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Processo nº ${lawsuit.id}',
              style: TextStyle(fontSize: 11, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
