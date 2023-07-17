import 'package:coustom_drawer/PassDataOnePageToOther/second_page.dart';
import 'package:flutter/material.dart';

class PassDataFirstPage1 extends StatefulWidget {
  @override
  State<PassDataFirstPage1> createState() => _PassDataFirstPage1State();
}

class _PassDataFirstPage1State extends State<PassDataFirstPage1> {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phone = TextEditingController();
  String? ab;
  void clearController(
      [TextEditingController? name,
      TextEditingController? email,
      TextEditingController? phone]) {
    name?.clear();
    email?.clear();
    phone?.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Your Id is : ${ab == null ? '' : ab}'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _name,
                    decoration: InputDecoration(
                      label: Text('Enter your Name :'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _email,
                    decoration: InputDecoration(
                      label: Text('Enter your Email :'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _phone,
                    decoration: InputDecoration(
                      label: Text('Enter your Phone :'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    ab = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (builder) => ScondPage2(
                          name: _name.text,
                          email: _email.text,
                          phone: _phone.text,
                        ),
                      ),
                    );
                    setState(() {});
                  },
                  child: Text('Go to next page'),
                ),
                TextButton(
                    onPressed: () {
                      clearController(_name, _email);
                    },
                    child: Text('clear'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
