import 'package:flutter/material.dart';

class FlexibleClass extends StatelessWidget {
  const FlexibleClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.brown,
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            height: 200,
            width: double.infinity,
            color: Colors.cyan,
          ),
        )
      ],
    );
  }
}

/// khatay note kora ache ... valo kore
