import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetClass extends StatefulWidget {
  const CupertinoActionSheetClass({Key? key}) : super(key: key);

  @override
  State<CupertinoActionSheetClass> createState() => _State();
}

class _State extends State<CupertinoActionSheetClass> {
  @override
  Widget build(BuildContext context) {
    final action1 = CupertinoActionSheet(
      title: Text('Which Fruits do you like'),
      message: Text('Select the iteam you like'),
      actions: [
        CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              print('Apple is selected');
            },
            child: Text('Apple')),
        CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              print('Banana is Selected');
            },
            child: Text('Banana')),
        CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              print('Mango is selected');
            },
            child: Text('Mango')),
      ],
      cancelButton: CupertinoActionSheetAction(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('Cancel'),
      ),
    );
    return Center(
      child: TextButton(
        onPressed: () {
          showCupertinoModalPopup(
              context: context, builder: (context) => action1);
        },
        child: Text('Click me'),
      ),
    );
  }
}
