import 'package:flutter/material.dart';

class ListViewClass extends StatelessWidget {
  ListViewClass({Key? key}) : super(key: key);

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
  ]; // ata Car list

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   margin: EdgeInsets.all(20),
    //   child: ListView(
    //     scrollDirection: Axis.vertical,
    //     children: [
    //       Container(
    //         decoration: BoxDecoration(
    //             color: Colors.red,
    //             borderRadius: BorderRadiusDirectional.circular(30)),
    //         height: 100,
    //         width: 100,
    //         child: Container(
    //           padding: EdgeInsets.all(5),
    //           child: Text(
    //             'CodeWare Limited',
    //             style: TextStyle(fontSize: 35),
    //             textAlign: TextAlign.center,
    //           ),
    //           margin: EdgeInsets.all(20),
    //           color: Colors.yellow,
    //         ),
    //       ),
    //       Divider(thickness: 20),
    //       Container(
    //         decoration: BoxDecoration(
    //             color: Colors.black,
    //             borderRadius: BorderRadiusDirectional.circular(30)),
    //         height: 100,
    //         width: 100,
    //       ),
    //       Divider(
    //         thickness: 20,
    //         color: Colors.indigo,
    //       ),
    //       Container(
    //         decoration: BoxDecoration(
    //             color: Colors.brown,
    //             borderRadius: BorderRadiusDirectional.circular(30)),
    //         height: 100,
    //         width: 100,
    //       ),
    //       Divider(),
    //       Container(
    //         decoration: BoxDecoration(
    //             color: Colors.white,
    //             borderRadius: BorderRadiusDirectional.circular(30)),
    //         height: 100,
    //         width: 100,
    //       ),
    //       Divider(),
    //       Container(
    //         decoration: BoxDecoration(
    //             color: Colors.yellow,
    //             borderRadius: BorderRadiusDirectional.circular(30)),
    //         height: 100,
    //         width: 100,
    //       ),
    //       Divider(),
    //       Container(
    //         height: 100,
    //         width: 100,
    //         color: Colors.red,
    //       ),
    //       Divider(),
    //       Container(
    //         height: 100,
    //         width: 100,
    //         color: Colors.cyanAccent,
    //       ),
    //       Divider(),
    //       Container(
    //         height: 100,
    //         width: 100,
    //         color: Colors.red,
    //       ),
    //       Divider(),
    //     ],
    //   ),
    // );

    return ListView.builder(
      itemCount: myItems.length,
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${index + 1}'),
                //SizedBox(width: 80),
                Text('Title : ${myItems[index]['title']}'),
                //SizedBox(width: 80),
                Flexible(
                    child: Image.network(
                  myItems[index]['img']!,
                  height: 100,
                  width: 100,
                )),
              ],
            ),
          ),
        );
      },
    );
  }
}
