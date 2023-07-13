import 'package:flutter/material.dart';

class BottomNavigationBarClass extends StatefulWidget {
  const BottomNavigationBarClass({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarClass> createState() =>
      _BottomNavigationBarClassState();
}

class _BottomNavigationBarClassState extends State<BottomNavigationBarClass> {
  int selectBar = 0;
  List view = [
    Center(
      child: Text('Home'),
    ),
    Center(
      child: Text('Group'),
    ),
    Center(
      child: Text('Notification'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: view.elementAt(selectBar),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectBar,
          onTap: (index) {
            setState(() {
              selectBar = index;
              print(index);
              print(selectBar);
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 25,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.group,
                size: 25,
              ),
              label: 'Group',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notification_add,
                size: 25,
              ),
              label: 'Notification',
            ),
          ],
        ),
      ),
    );
  }
}
