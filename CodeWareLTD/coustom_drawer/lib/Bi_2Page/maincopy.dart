import 'package:coustom_drawer/Bi_2Page/your_storage.dart';
import 'package:flutter/material.dart';

class HomePage11 extends StatefulWidget {
  @override
  State<HomePage11> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage11> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.indigo.shade800,
            Colors.indigoAccent,
            Colors.indigo.shade600
          ])),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.add_chart_outlined,
                            size: 45, color: Colors.white24),
                        SizedBox(
                          height: 25,
                        ),
                        Stack(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(120),
                            child: Container(
                              width: 270,
                              height: 230,
                              color: Colors.white10,
                            ),
                          ),
                          Positioned(
                            bottom: -20,
                            left: 28,
                            child: Image.network(
                              'https://cdn3d.iconscout.com/3d/free/thumb/free-app-store-in-ios-2978358-2476735.png?f=webp',
                              height: 215,
                              width: 215,
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Text(
                            'Manage your files the best way',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Text(
                            'The website was created in March 2014 by a group of programmers and authors from Vietnam. Currently, the project supports 5 languages, including English, ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white30,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                            height: 50,
                            width: 150,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (builder) => DataClass1()));
                              },
                              child: Text("Let's go",
                                  style: TextStyle(
                                      color: Colors.indigo, fontSize: 25)),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                backgroundColor: Colors.white,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
