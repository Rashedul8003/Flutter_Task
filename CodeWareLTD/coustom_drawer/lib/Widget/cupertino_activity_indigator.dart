import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndigatorClass extends StatefulWidget {
  const CupertinoActivityIndigatorClass({Key? key}) : super(key: key);

  @override
  State<CupertinoActivityIndigatorClass> createState() =>
      _CupertinoActivityIndigatorClassState();
}

class _CupertinoActivityIndigatorClassState
    extends State<CupertinoActivityIndigatorClass> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoActivityIndicator(
        radius: 50,
        color: Colors.red,
      ),
    );
  }
}
