import 'package:flutter/material.dart';

class LayoutBuilderClass extends StatelessWidget {
  const LayoutBuilderClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          LayoutBuilder(builder: (context, contrain1) {
            final width = contrain1.maxWidth;
            final heigt = contrain1.maxHeight;

            // return Container(
            //   width: width,
            //   height: heigt,
            //   color: Colors.orangeAccent,
            // );

            if (width < 600) {
              return Column(
                children: [
                  Text('This is the mobile display'),
                  Text('width :- $width'),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  )
                ],
              );
            } else if (width > 600 && width < 900) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('This is the Tab display'),
                  Text('width :- $width'),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  )
                ],
              );
            } else {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('This is the desktop or web  display'),
                  Text('width :- $width'),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                ],
              );
            }
          }),
        ],
      ),
    );
  }
}
