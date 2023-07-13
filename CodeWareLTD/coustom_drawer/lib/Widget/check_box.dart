import 'package:flutter/material.dart';

class CheckBoxCla extends StatefulWidget {
  const CheckBoxCla({Key? key}) : super(key: key);

  @override
  State<CheckBoxCla> createState() => _CheckBoxClaState();
}

class _CheckBoxClaState extends State<CheckBoxCla> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform.scale(
          // ai wiget er maddome checkBox size ta boro korlam
          scale: 10.5,
          child: Checkbox(
            hoverColor: Colors.red,
            activeColor: Colors.yellow,
            checkColor: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            value: isSelected,
            onChanged: (bool? value) {
              isSelected = value!;
              setState(() {});
              print(isSelected);
            },
          ),
        ),
      ),
    );
  }
}
