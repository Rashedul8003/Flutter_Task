import 'package:flutter/material.dart';

class CustomAppBarClass extends StatefulWidget {
  const CustomAppBarClass({Key? key}) : super(key: key);

  @override
  State<CustomAppBarClass> createState() => _CustomAppBarClassState();
}

class _CustomAppBarClassState extends State<CustomAppBarClass> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: _appBar(),
          body: TabBarView(
            children: [
              _tabBarViewItem(Icons.home, 'This is Home '),
              _tabBarViewItem(Icons.group, 'This is  Group'),
              _tabBarViewItem(Icons.notification_add, 'This is Notification '),
              _tabBarViewItem(Icons.menu, 'This is Menu '),
            ],
          ),
        ),
      ),
    );
    return Scaffold(
      appBar: _appBar(),
      body: DefaultTabController(
        initialIndex: 3,
        length: 4,
        child: TabBarView(
          children: [
            _tabBarViewItem(Icons.home, 'This is Home '),
            _tabBarViewItem(Icons.group, 'This is  Group'),
            _tabBarViewItem(Icons.notification_add, 'This is Notification '),
            _tabBarViewItem(Icons.menu, 'This is Menu '),
          ],
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(180),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: _boxDecoration(),
        child: Column(
          children: [
            _topBar(),
            _searchBox(),
            _tabBar(),
          ],
        ),
      ),
    );
  }

  Decoration _boxDecoration() {
    return BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        gradient: LinearGradient(
            colors: [Colors.white, Colors.blue.shade300],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter));
  }

  Widget _topBar() {
    return Row(
      children: [
        Image.asset(
          'assets/images/img_1.JPG',
          scale: 7,
        ),
        Expanded(
          child: Text('  CodeWare Limited',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center),
        ),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/rashedul.JPG'),
        )
      ],
    );
  }

  Widget _searchBox() {
    var msgController = TextEditingController();
    return Container(
      padding: EdgeInsets.only(top: 5),
      child: SizedBox(
        height: 35,
        child: TextFormField(
          controller: msgController,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: '  Search....',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              contentPadding: EdgeInsets.all(10),
              prefix: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Icon(
                  Icons.search,
                ),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  msgController.clear();
                  setState(() {});
                },
                icon: Icon(Icons.close),
              )),
        ),
      ),
    );
  }

  Widget _tabBar() {
    return TabBar(tabs: [
      Tab(
        iconMargin: EdgeInsets.all(0),
        icon: Icon(
          Icons.home,
          color: Colors.white,
        ),
        child: Text('Home', style: TextStyle(color: Colors.red)),
      ),
      Tab(
        iconMargin: EdgeInsets.all(0),
        icon: Icon(Icons.group, color: Colors.white),
        text: 'Group',
      ),
      Tab(
        iconMargin: EdgeInsets.all(0),
        icon: Icon(
          Icons.notification_add,
          color: Colors.white,
        ),
        text: 'Notification',
      ),
      Tab(
        iconMargin: EdgeInsets.all(0),
        icon: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        text: 'Menu',
      ),
    ]);
  }

  Widget _tabBarViewItem(IconData iicon, String name) {
    return Column(
      children: [
        Icon(
          iicon,
          size: 100,
        ),
        Text(
          name,
          style: TextStyle(color: Colors.yellow, fontSize: 35),
        )
      ],
    );
  }
}
