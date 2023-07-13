import 'package:flutter/material.dart';

class MediaQueryClass extends StatelessWidget {
  const MediaQueryClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width / 2,
        // ata dia Resposive UI make kora jay
        color: Colors.greenAccent,
      ),
    );
  }
}
