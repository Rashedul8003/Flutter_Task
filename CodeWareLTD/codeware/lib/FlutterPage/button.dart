import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
   ButtonPage({Key? key}) : super(key: key);

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    padding: EdgeInsets.all(25),
   foregroundColor: Colors.white, /// ata button er modde color k mention kore
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(40)),
    ),

  
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(onPressed: () {}, child: Text('TextButton'),style: buttonStyle,),
          ElevatedButton(onPressed: () {}, child: Text('ElevatedButton'),style: buttonStyle,),
          OutlinedButton(onPressed: () {}, child: Text('OutlinedButton'),style: buttonStyle,)
        ],
      ),
    );
  }
}
