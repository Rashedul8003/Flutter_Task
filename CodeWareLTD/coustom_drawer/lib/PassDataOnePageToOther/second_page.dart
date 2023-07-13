import 'package:flutter/material.dart';

class ScondPage2 extends StatelessWidget {
  TextEditingController _id = TextEditingController();
  String name, email, phone;

  ScondPage2({required this.name, required this.email, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Your name is : $name'),
                Text('Your email is : $email'),
                Text('Your phone number : $phone'),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _id,
                    decoration: InputDecoration(
                      label: Text('Enter your Id :'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        _id.text,
                      );
                      print('$name');
                    },
                    child: Text('Go to first page'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
