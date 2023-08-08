import 'package:flutter/material.dart';

class AbsorbPointerClass extends StatefulWidget {
  const AbsorbPointerClass({Key? key}) : super(key: key);

  @override
  State<AbsorbPointerClass> createState() => _AbsorbPointerClassState();
}

class _AbsorbPointerClassState extends State<AbsorbPointerClass> {
  bool isAbsorbing = false;
  bool isChecked = false;
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Absorb Pointer'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SwitchListTile(
              value: isAbsorbing,
              onChanged: (bool value) {
                isAbsorbing = value;
                setState(() {});
              },
              title: Text('Disable everything below'),
            ),
            Divider(
              height: 20,
              color: Colors.purple,
            ),
            AbsorbPointer(
              absorbing: isAbsorbing,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('ElevatedButton');
                      },
                      child: Text('Just a button'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CheckboxListTile(
                      value: isChecked,
                      tileColor: isAbsorbing ? Colors.grey : Colors.transparent,
                      onChanged: (_) {
                        isChecked = !isChecked;
                        print(isChecked);
                        setState(() {});
                      },
                      title: Text("A simple checkbox"),
                    ),
                    SwitchListTile(
                      value: isOn,
                      onChanged: (bool value) {
                        isOn = value;
                        setState(() {});
                      },
                      title: Text("A simple Switch"),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
