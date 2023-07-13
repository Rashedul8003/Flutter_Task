import 'package:flutter/material.dart';

class DynamicGridView extends StatelessWidget {
  DynamicGridView({Key? key}) : super(key: key);

  final myGrid = [
    {
      'img':
          'https://content-images.carmax.com/qeontfmijmzv/MY19MKj0XutK084z874jt/9632621fd8464b5c0e54a9dee64ad4e5/tesla.jpg',
      'title': 'Car'
    },
    {
      'img':
          'https://content-images.carmax.com/qeontfmijmzv/MY19MKj0XutK084z874jt/9632621fd8464b5c0e54a9dee64ad4e5/tesla.jpg',
      'title': 'Car'
    },
    {
      'img':
          'https://content-images.carmax.com/qeontfmijmzv/MY19MKj0XutK084z874jt/9632621fd8464b5c0e54a9dee64ad4e5/tesla.jpg',
      'title': 'Car'
    },
    {
      'img':
          'https://content-images.carmax.com/qeontfmijmzv/MY19MKj0XutK084z874jt/9632621fd8464b5c0e54a9dee64ad4e5/tesla.jpg',
      'title': 'Car'
    },
  ];
  myGridSnackBar(context, message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        itemCount: myGrid.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 0, childAspectRatio: 1.3),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              myGridSnackBar(context, myGrid[index]['title']);
            },
            child: Container(
              padding: EdgeInsets.all(10),
              height: 50,
              width: double.infinity,
              child: Image.network(myGrid[index]['img']!),
            ),
          );
        },
      ),
    );
  }
}
