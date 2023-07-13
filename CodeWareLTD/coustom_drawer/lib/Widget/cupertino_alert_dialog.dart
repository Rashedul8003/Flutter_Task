import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAlertDialogClass extends StatefulWidget {
  const CupertinoAlertDialogClass({Key? key}) : super(key: key);

  @override
  State<CupertinoAlertDialogClass> createState() => _State();
}

class _State extends State<CupertinoAlertDialogClass> {
  @override
  Widget build(BuildContext context) {
    final dialog1 = CupertinoAlertDialog(
      title: Text('Do you Want to exit now ?'),
      actions: [
        CupertinoButton(
            onPressed: () {
              Navigator.pop(context);
              print('No is selected');
            },
            child: Text('No')),
        CupertinoButton(
            onPressed: () {
              Navigator.pop(context);
              print('Yes is Selected');
            },
            child: Text('Yes')),
      ],
    );
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              showCupertinoModalPopup(
                  context: context, builder: (context) => dialog1);
            },
            child: Text('Click me for Dialog'),
          ),
          Divider(),
          CupertinoButton.filled(
              child: Text('CupertinoButton'),
              onPressed: () {
                print('CupertinoButton');
              }),
          CupertinoButton(
              child: Icon(
                Icons.add_circle,
                size: 35,
              ),
              onPressed: () {
                print('CupertinoButton');
              }),
          CupertinoButton(
            child: Text('Cup Disable Button'),
            onPressed: null,
            disabledColor: Colors.red,
          )
        ],
      ),
    );
  }
}
