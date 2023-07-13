import 'package:coustom_drawer/Widget/card.dart';
import 'package:flutter/material.dart';

class DrawerClass extends StatefulWidget {
  const DrawerClass({Key? key}) : super(key: key);

  @override
  State<DrawerClass> createState() => _State();
}

class _State extends State<DrawerClass> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          DrawerHeader(child: CustomCard()),
          ListTile(
              title: Text('Home'),
              hoverColor: Colors.black38,
              onTap: () {},
              leading: Icon(Icons.home),
              iconColor: Colors.black),
          ListTile(
              title: Text('Profile'),
              hoverColor: Colors.black38,
              onTap: () {},
              leading: Icon(Icons.person),
              iconColor: Colors.black),
          ListTile(
              title: Text('Contract'),
              hoverColor: Colors.black38,
              onTap: () {},
              leading: Icon(Icons.contact_mail_sharp),
              iconColor: Colors.black),
          ListTile(
              title: Text('Email'),
              hoverColor: Colors.black38,
              onTap: () {},
              leading: Icon(Icons.email),
              iconColor: Colors.black),
          ListTile(
              title: Text('Settings'),
              hoverColor: Colors.black38,
              onTap: () {},
              leading: Icon(Icons.settings),
              iconColor: Colors.black),
        ],
      ),
    );
  }
}
