import 'package:flutter/material.dart';

class ContainerClass extends StatelessWidget {
  const ContainerClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(color: Colors.red, spreadRadius: 1, blurRadius: 15)
              ], color: Colors.yellow),
              // margin: EdgeInsets.all(150),
              padding: EdgeInsets.all(0),
              width: 100,
              height: 100,
              child: Text('ccc', textAlign: TextAlign.right),
              // color: Colors.yellow,
              // color akhn decoration er modde dite hobe ta na hole error dibe
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: 180,
              height: 200,
              decoration: BoxDecoration(color: Colors.pink),
              child: Center(
                child: TextButton(
                  child: Text(
                    'I love coding :',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () => print('TextButton'),
                ),
              ),
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: 180,
              height: 200,
              decoration: BoxDecoration(color: Colors.pink),
              child: Center(
                child: TextButton(
                  child: Text(
                    'I love coding :',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () => print('TextButton'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
