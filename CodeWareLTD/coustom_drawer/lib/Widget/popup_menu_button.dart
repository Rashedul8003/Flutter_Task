import 'package:flutter/material.dart';

class PoupMenuButtonClass extends StatefulWidget {
  const PoupMenuButtonClass({Key? key}) : super(key: key);

  @override
  State<PoupMenuButtonClass> createState() => _PoupMenuButtonClassState();
}

class _PoupMenuButtonClassState extends State<PoupMenuButtonClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text('Home')),
              PopupMenuItem(child: Text('Add')),
              PopupMenuItem(child: Text('Notification')),
            ];
          })
        ],
      ),
    );
  }
}
