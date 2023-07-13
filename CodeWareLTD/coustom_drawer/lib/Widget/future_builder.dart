import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FutureBuilderClass extends StatefulWidget {
  const FutureBuilderClass({Key? key}) : super(key: key);

  @override
  State<FutureBuilderClass> createState() => _FutureBuilderClassState();
}

class _FutureBuilderClassState extends State<FutureBuilderClass> {
  Future<String> getData() {
    return Future.delayed(Duration(seconds: 2), () {
      return 'Your Data ';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
          future: getData(),
          builder: (BuildContext context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CupertinoActivityIndicator(
                color: Colors.red,
                radius: 30,
              );
            }
            if (snapshot.hasData) {
              return Text(snapshot.data.toString());
            } else {
              return Text(snapshot.error.toString());
            }
          }),
    );
  }
}
