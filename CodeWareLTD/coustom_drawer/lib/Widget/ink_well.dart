import 'package:flutter/material.dart';

class InkWellClass extends StatelessWidget {
  const InkWellClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                print('On Tap');
              },
              child: Container(
                padding: EdgeInsets.all(0),
                height: 50,
                width: 150,
                alignment: Alignment.center,
                child: Text('InkWell On Tab'),
              ),
            ),
            GestureDetector(
              onTap: () {
                print('Gesture On Tab');
              },
              child: Text('Gesture On Tab', style: TextStyle(fontSize: 35)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    print('Gesture Continer');
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                ),
                VerticalDivider(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    print('Ink Well On Tab');
                  },
                  child: Ink(
                    height: 100,
                    width: 100,
                    child: FlutterLogo(),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    // tobe ai babe dile kaj korbe
                    //  color: Colors.green,  // ai ink ta container chilo
                    // ai babe color dile splashColor kaj kore na Material er modde dite hobe
                  ),
                  splashColor: Colors.red,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
