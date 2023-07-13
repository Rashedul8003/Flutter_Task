import 'package:flutter/material.dart';

class RowClass extends StatelessWidget {
  const RowClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      height: 300,
      color: Colors.green,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 100,
              width: 100,
              child: Text('A'),
              color: Colors.red,
            ),
          ),
          SizedBox(
            width: 10,
            height: 10,
          ),
          Container(
            height: 100,
            width: 100,
            child: Text('B'),
            color: Colors.yellow,
          ),
          SizedBox(
            width: 10,
            height: 10,
          ),
          Container(
            height: 100,
            width: 100,
            child: Text('C'),
            color: Colors.cyanAccent,
          ),
          SizedBox(
            width: 10,
            height: 10,
          ),
          // Container(
          //   height: 100,
          //   width: 100,
          //   child: Text('D'),
          //   color: Colors.orange,
          // ),
        ],
      ),
    );
  }
}
