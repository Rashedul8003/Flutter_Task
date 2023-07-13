import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card View'),
      ),
      body: Center(
        child: Card(
          color: Color.fromRGBO(33, 191, 115, 1),
          elevation: 80,
          shadowColor: Color.fromRGBO(33, 191, 115, 1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          child: SizedBox(
            width: 200,
            height: 200,
            child: Center(child: Text('Card')),
          ),
        ),
      ),
    );
  }
}
