import 'package:flutter/material.dart';

class StackClass extends StatelessWidget {
  const StackClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center, // bitorer sob gulo center hoia geche
        clipBehavior: Clip.none,
        children: [
          Container(
            margin: EdgeInsets.all(50),
            color: Colors.green,
          ),
          Container(
            // padding: EdgeInsets.all(200),
            margin: EdgeInsets.all(75),
            color: Colors.red,
          ),
          Positioned(
            //height: 70,
            //top: 10,
            // top a 0 dia test korle buja joy  j o ki vabe kaj kore
            /// akhane top left right kora jay
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(color: Colors.white, spreadRadius: 1, blurRadius: 15)
              ], color: Colors.yellow),
              // margin: EdgeInsets.all(150),
              padding: EdgeInsets.all(0),
              width: 100,
              height: 100,
              child: Text('cccccccc', textAlign: TextAlign.right),
              // color: Colors.yellow,
              // color akhn decoration er modde dite hobe ta na hole error dibe
            ),
          )
        ],
      ),
    );
  }
}
