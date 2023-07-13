import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,width: 100,child:Image.asset('assets/images/rashedul.JPG'),
            ),
            Container(
              height: 100,width: 100,child:Image.asset('assets/images/rashedul.JPG'),
            ),
            Container(
              height: 100,width: 100,child:Image.network('https://content-images.carmax.com/qeontfmijmzv/MY19MKj0XutK084z874jt/9632621fd8464b5c0e54a9dee64ad4e5/tesla.jpg'),
            )
          ],
        )
    );
  }
}