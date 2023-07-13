import 'package:flutter/material.dart';

class Alert_Dialog extends StatelessWidget {
  Alert_Dialog({Key? key}) : super(key: key);

  MyAlertDialog(con) {
    return showDialog(
        context: con,
        builder: (BuildContext conn) {
          return Expanded(
              child: AlertDialog(
            title: Text('Alert Dailog Title'),
            content: Text('Alert Dailog Description area !\nDo You Want to Back Now ? '),
            actions: [
              TextButton(onPressed: () {Navigator.pop(con);}, child: Text('YES!')),
              TextButton(onPressed: () {}, child: Text('NO!')),
            ],
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child:
            ElevatedButton(onPressed: () {MyAlertDialog(context);}, child: Text('Click me For Alert')),
      ),
    );
  }
}
