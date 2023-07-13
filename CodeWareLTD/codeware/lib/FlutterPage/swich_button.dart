import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

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
