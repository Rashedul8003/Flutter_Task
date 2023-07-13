import 'package:flutter/material.dart';

class ExpendedFlex extends StatelessWidget {
  const ExpendedFlex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Image(
                    image: NetworkImage(
                        'https://content-images.carmax.com/qeontfmijmzv/MY19MKj0XutK084z874jt/9632621fd8464b5c0e54a9dee64ad4e5/tesla.jpg')),
              ),
              Expanded(
                flex: 2,
                child: Image(
                    image: NetworkImage(
                        'https://content-images.carmax.com/qeontfmijmzv/MY19MKj0XutK084z874jt/9632621fd8464b5c0e54a9dee64ad4e5/tesla.jpg')),
              ),
              Expanded(
                flex: 4,
                child: Image(
                    image: NetworkImage(
                        'https://content-images.carmax.com/qeontfmijmzv/MY19MKj0XutK084z874jt/9632621fd8464b5c0e54a9dee64ad4e5/tesla.jpg')),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star_border),
              Icon(Icons.star_border)
            ],
          ),
          SizedBox(
            height: 20,
            width: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.add_a_photo,
                size: 35,
              ),
              Icon(
                Icons.add_a_photo,
                size: 35,
              ),
              Icon(
                Icons.add_a_photo,
                size: 35,
              )
            ],
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),
          SafeArea(
            child: Row(
              children: [
                Container(
                    color: Colors.red,
                    padding: EdgeInsets.all(40),
                    child: Text('A')),
                Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(40),
                    child: Text('B')),
                Expanded(
                  //akhane expanded er karone full jayga nia niche .. r jodi B te o expanded kori
                  // ta hole dekha jabe A er por B r C soman bag kore jayga dokhol korbe
                  child: Container(
                      color: Colors.yellow,
                      padding: EdgeInsets.all(40),
                      child: Text('C')),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
