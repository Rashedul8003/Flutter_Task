import 'package:flutter/material.dart';

class StatefullBuilderClass extends StatefulWidget {
  const StatefullBuilderClass({Key? key}) : super(key: key);

  @override
  State<StatefullBuilderClass> createState() => _StatefullBuilderClassState();
}

class _StatefullBuilderClassState extends State<StatefullBuilderClass> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    print('Full  : Widget build(BuildContext context$count)');
    return Center(
      child: StatefulBuilder(
        builder: (context, inter2) {
          print('ony StatefulBuilder$count');
          return TextButton(
              onPressed: () {
                inter2(() {
                  count++;
                });

                //  setState(() {});
              },
              child: Text(
                '$count',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ));
        },
      ),
    );
  }
}
