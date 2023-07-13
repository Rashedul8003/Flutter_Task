import 'package:flutter/material.dart';
import 'package:some_project_list/currency_exchange/ui/exchange.dart';
import 'package:some_project_list/currency_exchange/ui/home.dart';

class DashBorad extends StatefulWidget {
  const DashBorad({Key? key}) : super(key: key);

  @override
  State<DashBorad> createState() => _DashBoradState();
}

class _DashBoradState extends State<DashBorad> {
  int selectedIndex = 0;
  Widget getView() {
    if (selectedIndex == 0) {
      return Home();
    }
    return Exchange();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Exchange'),
      ),
      backgroundColor: Colors.blueGrey,
      body: getView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.currency_exchange), label: 'Exchan'),
        ],
      ),
    );
  }
}
