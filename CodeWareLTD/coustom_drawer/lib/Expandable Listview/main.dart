import 'package:coustom_drawer/Expandable%20Listview/datamodel.dart';
import 'package:flutter/material.dart';

class ExpandableListViewClass extends StatefulWidget {
  @override
  State<ExpandableListViewClass> createState() =>
      _ExpandableListViewClassState();
}

class _ExpandableListViewClassState extends State<ExpandableListViewClass> {
  List<Menu> data = [];

  @override
  void initState() {
    dataList.forEach((element) {
      data.add(Menu.fromJson(element));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //  drawer: _drawer(data),  //same jinish drawer a dekhay
        appBar: AppBar(
          title: const Text('Expandable ListView'),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) =>
              _buildList(data[index]),
        ),
      ),
    );
  }
  //this is for drawer
///////////////////////////////////////////////////
  // Widget _drawer(List<Menu> data) {
  //   return Drawer(
  //       child: SafeArea(
  //     child: SingleChildScrollView(
  //       child: Column(
  //         children: [
  //           UserAccountsDrawerHeader(
  //               margin: EdgeInsets.only(bottom: 0.0),
  //               accountName: Text('demo'),
  //               accountEmail: Text('demo@webkul.com')),
  //           ListView.builder(
  //             shrinkWrap: true,
  //             physics: NeverScrollableScrollPhysics(),
  //             itemCount: data.length,
  //             itemBuilder: (context, index) {
  //               return _buildList(data[index]);
  //             },
  //           )
  //         ],
  //       ),
  //     ),
  //   ));
  // }

  Widget _buildList(Menu list) {
    if (list.subMenu.isEmpty)
      return Builder(builder: (context) {
        return ListTile(
            // onTap: () => Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => SubCategory(list.name))),
            leading: SizedBox(),
            title: Text('${list.name}'));
      });
    return ExpansionTile(
      leading: Icon(list.icon),
      title: Text(
        '${list.name}',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      children: list.subMenu.map(_buildList).toList(),
    );
  }
}
