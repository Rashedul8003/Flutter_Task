import 'package:flutter/material.dart';

class ListTileClass extends StatefulWidget {
  ListTileClass({Key? key}) : super(key: key);

  @override
  State<ListTileClass> createState() => _ListTileClassState();
}

class _ListTileClassState extends State<ListTileClass> {
  var a;
  bool b = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  leading: Icon(Icons.phone_android),
                  title: Text(' Title ', textAlign: TextAlign.center),
                  subtitle: Text(
                    ' Subtitle ',
                    textAlign: TextAlign.center,
                  ),
                  textColor: a,
                  iconColor: Colors.blueAccent,
                  trailing: TextButton(
                      child: Icon(
                        Icons.delete,
                      ),
                      onPressed: () {
                        if (b == true) {
                          a = Colors.red;
                          setState(() {});
                          b = false;
                          print(a);
                        } else {
                          a = Colors.amber;
                          b = true;
                          setState(() {});
                          print(a);
                        }
                      }),
                ),
                ListTile(
                  title: Text('Click for Code'),
                  trailing: InkWell(
                      child: Icon(Icons.remove_red_eye),
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (builder) => AlertDialog(
                                  title: Text('This code '),
                                  content: Text(""),
                                ));
                        print('I am InkWell');
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
