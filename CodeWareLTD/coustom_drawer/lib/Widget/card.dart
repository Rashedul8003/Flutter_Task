import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Color.fromRGBO(33, 191, 115, 1),
        elevation: 80,
        shadowColor: Color.fromRGBO(33, 191, 115, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: SizedBox(
          width: 200,
          height: 200,
          child: Container(
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
        ));
  }
}
