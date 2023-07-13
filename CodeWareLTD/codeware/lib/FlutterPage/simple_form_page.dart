import 'package:flutter/material.dart';

class SimpleFormPage extends StatelessWidget {
  const SimpleFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.fromLTRB(40, 20, 40, 5),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'First Name :'),
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(40, 20, 40, 5),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Last Name :'),
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(40, 20, 40, 5),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Email :'),
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(40, 20, 40, 5),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Phone :'),
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(40, 20, 40, 5),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Submit'),
                style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 60)),
              ))
        ],
      ),
    );
  }
}
