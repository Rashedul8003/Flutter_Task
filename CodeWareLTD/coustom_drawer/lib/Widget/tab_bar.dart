import 'package:coustom_drawer/FragmentAllPage/ac_unit.dart';
import 'package:coustom_drawer/FragmentAllPage/add_chart.dart';
import 'package:flutter/material.dart';

class TabBarClass extends StatelessWidget {
  const TabBarClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.ac_unit),
                  text: 'Ac Unit',
                ),
                Tab(
                  icon: Icon(
                    Icons.add,
                  ),
                  text: 'Add',
                ),
                Tab(
                  icon: Icon(Icons.addchart),
                  text: 'Add Chart',
                )
              ],
            ),
          ),
          body: TabBarView(children: [AcUnit(), AddChart(), AddChart()])),
    );
  }
}
