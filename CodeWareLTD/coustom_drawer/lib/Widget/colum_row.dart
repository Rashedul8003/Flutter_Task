import 'package:flutter/material.dart';

class ColoumRow extends StatefulWidget {
  const ColoumRow({Key? key}) : super(key: key);

  @override
  State<ColoumRow> createState() => _ColoumRowState();
}

class _ColoumRowState extends State<ColoumRow> {
  final controller = ScrollController();
  // controller deyar karon holo  line 19 and 23 ekoi rokom hote hobe ,,
  // ta hole scroll k click kore tana jabe
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thickness: 20,
      thumbVisibility: true,
      trackVisibility: true,
      controller: controller,
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: controller,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                width: 180,
                height: 200,
                decoration: BoxDecoration(color: Colors.pink),
                child: Text('I love coding :'),
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: 180,
                height: 200,
                decoration: BoxDecoration(color: Colors.pink),
                child: Center(
                  child: TextButton(
                    child: Text(
                      'I love coding :',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () => print('TextButton'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: 180,
                height: 200,
                decoration: BoxDecoration(color: Colors.pink),
                child: Center(
                  child: TextButton(
                    child: Text(
                      'I love coding :',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () => print('TextButton'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: 180,
                height: 200,
                decoration: BoxDecoration(color: Colors.pink),
                child: Center(
                  child: TextButton(
                    child: Text(
                      'I love coding :',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () => print('TextButton'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: 180,
                height: 200,
                decoration: BoxDecoration(color: Colors.pink),
                child: Center(
                  child: TextButton(
                    child: Text(
                      'I love coding :',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () => print('TextButton'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: 180,
                height: 200,
                decoration: BoxDecoration(color: Colors.pink),
                child: Center(
                  child: TextButton(
                    child: Text(
                      'I love coding :',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () => print('TextButton'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: 180,
                height: 200,
                decoration: BoxDecoration(color: Colors.pink),
                child: Center(
                  child: TextButton(
                    child: Text(
                      'I love coding :',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () => print('TextButton'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
