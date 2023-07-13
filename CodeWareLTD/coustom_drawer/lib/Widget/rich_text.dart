import 'package:flutter/material.dart';

class RichTextClass extends StatelessWidget {
  const RichTextClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      margin: EdgeInsets.all(10),
      child: RichText(
        text: TextSpan(
            text: 'We live ',
            style: TextStyle(color: Colors.red, fontSize: 25),
            children: [
              TextSpan(
                text: 'in',
                style: TextStyle(fontSize: 45, color: Colors.yellow),
              ),
              TextSpan(text: ' Bangladesh')
            ]),
      ),
    ));
  }
}
