import 'package:flutter/material.dart';

class BottomSheetClass extends StatefulWidget {
  const BottomSheetClass({Key? key}) : super(key: key);

  @override
  State<BottomSheetClass> createState() => _BottomSheetClassState();
}

class _BottomSheetClassState extends State<BottomSheetClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return Container(
                    height: 250,
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15))),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Add anything ',
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing:
                              Icon(Icons.add_a_photo, color: Colors.white),
                          leading: Icon(Icons.access_alarm_rounded,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  );
                });
          },
          child: Text('Open'),
        ),
      ),
    );
  }
}
