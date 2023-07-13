import 'package:codeware/FragmentAllPage/ac_unit.dart';
import 'package:codeware/FragmentAllPage/add.dart';
import 'package:codeware/FragmentAllPage/add_chart.dart';
import 'package:codeware/FragmentAllPage/add_circle.dart';
import 'package:codeware/FragmentAllPage/home.dart';
import 'package:flutter/material.dart';

class Tab_Bar extends StatelessWidget {
  const Tab_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text('TabBar', style: TextStyle(color: Colors.black))),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(
                icon: Icon(Icons.person),
                text: 'person',
              ),
              Tab(
                icon: Icon(Icons.add),
                text: 'add',
              ),
              Tab(
                icon: Icon(Icons.add_circle),
                text: 'add_circle',
              ),
              Tab(
                icon: Icon(Icons.add_chart),
                text: 'add_chart',
              ),
              Tab(
                icon: Icon(Icons.ac_unit),
                text: 'ac_unit',
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              AcUnit(),
              Add_(),
              AddChart(),
              AddCircle(),
              Home_(),
            ],
          ),
        ));
  }
}
