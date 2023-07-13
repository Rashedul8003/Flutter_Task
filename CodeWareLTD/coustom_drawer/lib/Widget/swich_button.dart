import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

// ata holo alada swich ja package and dependency alada kore dia dite hoy .. good practice er jonnde khali khali ai gulo use kora ucchit na

class SwichButtonClass extends StatefulWidget {
  const SwichButtonClass({Key? key}) : super(key: key);

  @override
  State<SwichButtonClass> createState() => _SwichButtonClassState();
}

class _SwichButtonClassState extends State<SwichButtonClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.brown,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: LiteRollingSwitch(
                  value: true,
                  textOn: 'On',
                  textOff: 'Off',
                  colorOn: Colors.amber,
                  colorOff: Colors.deepOrange,
                  onTap: () {
                    print('OnTab');
                  },
                  onDoubleTap: () {
                    print('onDoubleTap');
                  },
                  onSwipe: () {
                    print('onSwipe');
                  },
                  onChanged: (bool posi) {
                    print(posi);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
