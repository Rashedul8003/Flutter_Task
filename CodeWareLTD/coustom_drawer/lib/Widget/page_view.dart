import 'package:coustom_drawer/FragmentAllPage/ac_unit.dart';
import 'package:coustom_drawer/FragmentAllPage/add.dart';
import 'package:coustom_drawer/FragmentAllPage/add_chart.dart';
import 'package:flutter/material.dart';

class PageViewClass extends StatelessWidget {
  const PageViewClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> pageView = [AcUnit(), Add_(), AddChart()];
    return SafeArea(
      child: PageView(
        scrollDirection: Axis.horizontal,
        controller: PageController(),
        children: pageView,
      ),
    );
  }
}
