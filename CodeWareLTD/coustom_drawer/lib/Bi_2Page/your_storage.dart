import 'package:flutter/material.dart';

class DataClass1 extends StatefulWidget {
  const DataClass1({Key? key}) : super(key: key);

  @override
  State<DataClass1> createState() => _DataClass1State();
}

class _DataClass1State extends State<DataClass1> {
  bool folder = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(15),
          // color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome, Tom'),
                      Text('Your storage',
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(150),
                    child: Container(
                      child: Image.network(
                          width: 60,
                          height: 60,
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqApN5bBSlLuTygsLYYkZEKikq07gPngPGGQ&usqp=CAU'),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          // color: Colors.redAccent,
                          color: Colors.indigo.shade100,
                          //  height: MediaQuery.of(context).size.height /2,
                          width: MediaQuery.of(context).size.width / 1.3,
                          height: 140,
                          //width: 250,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          color: Colors.indigo.shade200,
                          //   height: MediaQuery.of(context).size.height /2,
                          width: MediaQuery.of(context).size.width / 1.2,
                          height: 126,
                          //width: 300,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(150),
                                child: Container(
                                  child: Icon(Icons.accessibility_new,
                                      color: Colors.white38, size: 35),
                                  color: Colors.white12,
                                  width: 60,
                                  height: 60,
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Column(children: [
                                Text('Available space',
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '470 GB of 1 TB Used',
                                  style: TextStyle(color: Colors.white38),
                                ),
                              ]),
                            ],
                          ),
                          color: Colors.indigo,
                          // height: MediaQuery.of(context).size.height / 3.2,
                          width: MediaQuery.of(context).size.width,
                          height: 112,
                          // width: 350,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('YOUR FOLDER'),
                  InkWell(
                    child: Text('${folder ? 'Less Folder' : 'See More'}'),
                    onTap: () {
                      setState(() {
                        folder = !folder;
                        print(folder);
                      });
                    },
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              //this is for row
              folder ? row2() : row1(),
              SizedBox(
                height: 15,
              ),
              Text('SHARE YOUR DRIVE'),
              SizedBox(
                height: 15,
              ),

              Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //ata kono kaj kore na expanded er jonne tai sixbox user korchi
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black12,
                      ),
                      padding: EdgeInsets.all(8),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.person),
                          SizedBox(
                            width: 10,
                          ),
                          Text('xxxxxx')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black12,
                      ),
                      padding: EdgeInsets.all(8),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                              child: Icon(Icons.remove_red_eye),
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (builder) => Material(
                                          child: InkWell(
                                            onDoubleTap: () =>
                                                Navigator.pop(context),
                                            child: AlertDialog(
                                              backgroundColor: Colors.white10,
                                              insetPadding: EdgeInsets.fromLTRB(
                                                  15, 15, 15, 0),
                                              title: Text('This code :'),
                                              content: SingleChildScrollView(
                                                child: Text('''
import 'package:flutter/material.dart';
class DataClass1 extends StatelessWidget {
  const DataClass1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(15),
          // color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome, Tom'),
                      Text('Your storage',
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(150),
                    child: Container(
                      child: Image.network(
                          width: 60,
                          height: 60,
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqApN5bBSlLuTygsLYYkZEKikq07gPngPGGQ&usqp=CAU'),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          color: Colors.indigo.shade100,
                          height: 140,
                          width: 250,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          color: Colors.indigo.shade200,
                          height: 126,
                          width: 300,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(150),
                                child: Container(
                                  child: Icon(Icons.accessibility_new,
                                      color: Colors.white38, size: 35),
                                  color: Colors.white12,
                                  width: 60,
                                  height: 60,
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Column(children: [
                                Text('Available space',
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '470 GB of 1 TB Used',
                                  style: TextStyle(color: Colors.white38),
                                ),
                              ]),
                            ],
                          ),
                          color: Colors.indigo,
                          height: 112,
                          width: 350,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('YOUR FOLDER'), Text('See more')],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(13),
                      child: Container(
                        padding: EdgeInsets.all(13),
                        color: Colors.black12,
                        height: 145,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.diamond,
                              size: 35,
                              color: Colors.orangeAccent,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'UI Designes',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                              child: Text(
                                '992 files 4.3 GB',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(13),
                      child: Container(
                        padding: EdgeInsets.all(13),
                        color: Colors.black12,
                        height: 145,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.video_camera_front_sharp,
                              size: 35,
                              color: Colors.black,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Vidoes',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                              child: Text(
                                '992 files 4.3 GB',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text('SHARE YOUR DRIVE'),
              SizedBox(
                height: 15,
              ),
              Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //ata kono kaj kore na expanded er jonne tai sixbox user korchi
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black12,
                      ),
                      padding: EdgeInsets.all(8),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.person),
                          SizedBox(
                            width: 10,
                          ),
                          Text('xxxxxx')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black12,
                      ),
                      padding: EdgeInsets.all(8),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                              child: Icon(Icons.remove_red_eye),
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (builder) => Material(
                                          child: InkWell(
                                            onDoubleTap: () =>
                                                Navigator.pop(context),
                                            child: AlertDialog(
                                              insetPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              title: Text('This code :'),
                                              content: SingleChildScrollView(
                                                child: Text('''
                                                    '''),
                                              ),
                                            ),
                                          ),
                                        ));
                              }),
                          SizedBox(
                            width: 10,
                          ),
                          Text('yyyyyy')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard_outlined,
                color: Colors.black,
              ),
              label: ' '),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.file_copy_sharp,
              color: Colors.black,
            ),
            label: ' ',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_chart,
                color: Colors.black,
              ),
              label: ' '),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: ' ',
          )
        ],
      ),
    ));
  }
}

                                                  '''),
                                              ),
                                            ),
                                          ),
                                        ));
                              }),
                          SizedBox(
                            width: 10,
                          ),
                          Text('yyyyyy')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard_outlined,
                color: Colors.black,
              ),
              label: ' '),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.file_copy_sharp,
              color: Colors.black,
            ),
            label: ' ',
          ),
          // BottomNavigationBarItem(icon: SizedBox.shrink(), label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_chart,
                color: Colors.black,
              ),
              label: ' '),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: ' ',
          )
        ],
      ),
    ));
  }

  Widget row1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: Container(
              padding: EdgeInsets.all(13),
              color: Colors.black12,
              height: 145,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.diamond,
                    size: 35,
                    color: Colors.orangeAccent,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'UI Designes',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                    child: Text(
                      '992 files 4.3 GB',
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: Container(
              padding: EdgeInsets.all(13),
              color: Colors.black12,
              height: 145,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.video_camera_front_sharp,
                    size: 35,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Vidoes',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                    child: Text(
                      '992 files 4.3 GB',
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget row2() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Container(
                  padding: EdgeInsets.all(13),
                  color: Colors.black12,
                  height: 145,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.diamond,
                        size: 35,
                        color: Colors.orangeAccent,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'UI Designes',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                        child: Text(
                          '992 files 4.3 GB',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Container(
                  padding: EdgeInsets.all(13),
                  color: Colors.black12,
                  height: 145,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.video_camera_front_sharp,
                        size: 35,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Vidoes',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                        child: Text(
                          '992 files 4.3 GB',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Container(
                  padding: EdgeInsets.all(13),
                  color: Colors.black12,
                  height: 145,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.diamond,
                        size: 35,
                        color: Colors.orangeAccent,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'UI Designes',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                        child: Text(
                          '992 files 4.3 GB',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Container(
                  padding: EdgeInsets.all(13),
                  color: Colors.black12,
                  height: 145,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.video_camera_front_sharp,
                        size: 35,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Vidoes',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                        child: Text(
                          '992 files 4.3 GB',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Container(
                  padding: EdgeInsets.all(13),
                  color: Colors.black12,
                  height: 145,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.diamond,
                        size: 35,
                        color: Colors.orangeAccent,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'UI Designes',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                        child: Text(
                          '992 files 4.3 GB',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(13),
                child: Container(
                  padding: EdgeInsets.all(13),
                  color: Colors.black12,
                  height: 145,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.video_camera_front_sharp,
                        size: 35,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Vidoes',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                        child: Text(
                          '992 files 4.3 GB',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
