import 'package:flutter/material.dart';

class DynamicListViewBuilder extends StatelessWidget {
  DynamicListViewBuilder({Key? key}) : super(key: key);

  final myItems = [
    {
      'img':
          'https://content-images.carmax.com/qeontfmijmzv/MY19MKj0XutK084z874jt/9632621fd8464b5c0e54a9dee64ad4e5/tesla.jpg',
      'title': 'car'
    },
    {
      'img':
          'https://content-images.carmax.com/qeontfmijmzv/MY19MKj0XutK084z874jt/9632621fd8464b5c0e54a9dee64ad4e5/tesla.jpg',
      'title': 'car'
    },
    {
      'img':
          'https://content-images.carmax.com/qeontfmijmzv/MY19MKj0XutK084z874jt/9632621fd8464b5c0e54a9dee64ad4e5/tesla.jpg',
      'title': 'car'
    },
    {
      'img':
          'https://content-images.carmax.com/qeontfmijmzv/MY19MKj0XutK084z874jt/9632621fd8464b5c0e54a9dee64ad4e5/tesla.jpg',
      'title': 'car'
    },
    {
      'img':
          'https://content-images.carmax.com/qeontfmijmzv/MY19MKj0XutK084z874jt/9632621fd8464b5c0e54a9dee64ad4e5/tesla.jpg',
      'title': 'car'
    },
    {
      'img':
          'https://content-images.carmax.com/qeontfmijmzv/MY19MKj0XutK084z874jt/9632621fd8464b5c0e54a9dee64ad4e5/tesla.jpg',
      'title': 'car'
    },
  ];

  MySnackForList(mes, con) {
    return ScaffoldMessenger.of(con).showSnackBar(SnackBar(content: Text(mes)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: myItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              MySnackForList(myItems[index]['title'], context);
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              child: Image.network(myItems[index]['img']!, fit: BoxFit.fill),
            ),
          );
        },
      ),
    );
  }
}
