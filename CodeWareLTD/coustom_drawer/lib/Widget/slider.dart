import 'package:flutter/material.dart';

class SliderClass extends StatefulWidget {
  const SliderClass({Key? key}) : super(key: key);

  @override
  State<SliderClass> createState() => _SliderClassState();
}

class _SliderClassState extends State<SliderClass> {
  double currentvalue = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slider(
          min: 0,
          max: 100,
          divisions: 100,
          label: currentvalue.toString(),
          value: currentvalue,
          onChanged: (double value) {
            currentvalue = value;
            setState(() {
              print(value);
            });
          },
        ),
      ),
    );
  }
}
