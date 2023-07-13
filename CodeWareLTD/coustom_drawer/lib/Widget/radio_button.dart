import 'package:flutter/material.dart';

enum Lang { Java, C, Php }

class RadioButtonClass extends StatefulWidget {
  const RadioButtonClass({Key? key}) : super(key: key);

  @override
  State<RadioButtonClass> createState() => _RadioButtonClassState();
}

class _RadioButtonClassState extends State<RadioButtonClass> {
  Lang? language = Lang.Java;
  String? ll;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text('Which language do you know ??'),
          ListTile(
            title: Text('Java'),
            leading: Radio(
                value: 'Java',
                groupValue: ll,
                onChanged: (v) {
                  setState(() {
                    ll = v;
                  });

                  print(ll);
                }),
          ),
          ListTile(
            title: Text('C'),
            leading: Radio<String>(
                value: 'C',
                groupValue: ll,
                onChanged: (v) {
                  setState(() {
                    ll = v;
                  });
                  print(ll);
                }),
          ),
        ],
      ),
    );
  }
}
///////  group k amra enum kore o korte pari ,,
