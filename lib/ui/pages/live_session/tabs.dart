import 'package:risehallrepo/util/scaler/scaler.dart';
import 'package:flutter/material.dart';

import '../../../util/scaler/src/margin.dart';
import 'live_Q_A.dart';
import 'live_chat.dart';

class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Column(
            children: [
              const YMargin(24),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                //   height: 43,
                // margin: context.insetsSymetric(
                //   horizontal: 43,
                // ),

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, blurRadius: 2),
                    ]),
                child: TabBar(
                  indicatorWeight: 3,
                  controller: _tabController,
                  labelStyle: const TextStyle(
                    fontSize: 14,
                    // fontFamily: TRENDA_SEMI_BOLD,
                  ),
                  // labelPadding: context.insetsOnly(
                  //   left: 51,
                  //   right: 51,
                  //   top: 15,
                  //   bottom: 11,
                  //),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: const Color(0xFF737373),
                  tabs: const [
                    Tab(
                      text: "LiveChat",
                    ),
                    Tab(
                      text: "Q&A",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      LiveChat(),
                      QA(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
