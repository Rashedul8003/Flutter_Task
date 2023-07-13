import 'package:flutter/material.dart';

class DropDownButtonClass extends StatefulWidget {
  DropDownButtonClass({Key? key}) : super(key: key);

  @override
  State<DropDownButtonClass> createState() => _DropDownButtonClassState();
}

class _DropDownButtonClassState extends State<DropDownButtonClass> {
  String? dropDownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(40),
        child: Center(
          child: DropdownButton(
            style: TextStyle(fontSize: 25, color: Colors.red),
            icon: Icon(Icons.keyboard_arrow_down),
            hint: Text(
              'Select your City ?',
              style: TextStyle(fontSize: 25, color: Colors.blueAccent),
            ),
            dropdownColor: Colors.green,
            value: dropDownValue,
            isExpanded: true,
            items: [
              DropdownMenuItem(
                child: Text(
                  'Dhaka',
                ),
                value: 'Dhaka',
              ),
              DropdownMenuItem(
                child: Text('Bhola'),
                value: 'Bhola',
              ),
              DropdownMenuItem(
                child: Text('Borhanuddin'),
                value: 'Borhanuddin',
              ),
            ],
            onChanged: (v) {
              dropDownValue = v;
              print(dropDownValue);
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
