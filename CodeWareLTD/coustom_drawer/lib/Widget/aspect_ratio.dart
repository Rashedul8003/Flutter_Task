import 'package:flutter/material.dart';

class AspectRatioClass extends StatelessWidget {
  const AspectRatioClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AspectRatio(
        aspectRatio: 2 / 2,
        child: Image.network(
            'https://images.unsplash.com/photo-1500622944204-b135684e99fd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1161&q=80'),
      ),
    );
  }
}
