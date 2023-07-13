import 'package:codeware/FlutterPage/alert_dialog.dart';
import 'package:codeware/FlutterPage/body_container.dart';
import 'package:codeware/FlutterPage/call_back_function.dart';
import 'package:codeware/FlutterPage/card.dart';
import 'package:codeware/FlutterPage/dynamic_grid_view.dart';
import 'package:codeware/FlutterPage/dynamic_list_view_builder.dart';
import 'package:codeware/FlutterPage/fragment_tab_bar.dart';
import 'package:codeware/FlutterPage/simple_form_page.dart';
import 'package:codeware/FlutterPage/simple_navigation.dart';
import 'package:codeware/FlutterPage/test_page.dart';
import 'package:flutter/material.dart';

import 'button.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ActivePage(),

      // theme: ThemeData(primarySwatch: Colors.amber),
      //  color: Colors.red,
    );
  }
}

class ActivePage extends StatefulWidget {
  ActivePage({Key? key}) : super(key: key);

  @override
  State<ActivePage> createState() => _ActivePageState();
}

class _ActivePageState extends State<ActivePage> {
  int inde = 2;

  MysnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        title: Title(child: Text('CodeWare Ltd'), color: Colors.black),
        // ata korle r title spacing kaj kore na
        //   titleSpacing:70,
        backgroundColor: Colors.teal,
        //  toolbarHeight: 400,// ata dile app bar er height boro hoy ba choto hoy
        // titleTextStyle: TextStyle(color: Colors.white),

        // toolbarOpacity: .6,   // ata dia title er opacity control kore

        elevation: 80,
        // ata appBar er niche sado make kore

        actions: [
          IconButton(
              onPressed: () {
                MysnackBar("This is a  Comment Press", context);
              },
              hoverColor: Colors.pink,
              icon: Icon(Icons.comment)),
          IconButton(
              onPressed: () {
                MysnackBar("This is a  Comment Add", context);
              },
              icon: Icon(Icons.add)),
          IconButton(
              onPressed: () {
                MysnackBar("This is a  Comment add_chart_sharp", context);
              },
              icon: Icon(Icons.add_chart_sharp)),
          IconButton(
              onPressed: () {
                MysnackBar("This is a  Comment add_a_photo_rounded", context);
              },
              icon: Icon(Icons.add_a_photo_rounded)),
        ],
      ),

      body: CallBackClass(),
      // body: Center(
      //   child: Image.asset('assets/images/rashedul.JPG'),
      // ),
      floatingActionButton: FloatingActionButton(
        elevation: .5,
        child: Icon(Icons.add_circle_outline),
        hoverColor: Colors.greenAccent,
        onPressed: () {
          MysnackBar('This is the FlotingActionButton', context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: inde,
        backgroundColor: Colors.white10,
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.black87,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          //BottomNavigationBarItem(icon: Icon(Icons.add_circle), label: 'Add'),
        ],
        onTap: (int index) {
          if (index == 0) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => FirstRoute()));
            setState(() {
              inde = 0;
            });

            print('What is the inde in :$inde');
            MysnackBar('This is the HomePage', context);
          }
          if (index == 1) {
            MysnackBar('This is the Profile', context);
            setState(() {
              inde = 1;
            });
          }
          if (index == 2) {
            MysnackBar('This is the Message', context);

            setState(() {
              inde = 2;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ButtonPage()));
            });
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://previews.123rf.com/images/arrow/arrow1004/arrow100400004/6844473-business-success-concept-dart-hitting-target.jpg')),
              ),
              child: UserAccountsDrawerHeader(
                //   margin: EdgeInsets.zero,
                accountName: Text('Rashedul'),
                accountEmail: Text('rashed.codeware@gmail.com'),
                currentAccountPicture: Image.network(
                    'https://previews.123rf.com/images/arrow/arrow1004/arrow100400004/6844473-business-success-concept-dart-hitting-target.jpg'),
                onDetailsPressed: () {
                  MysnackBar('This is the Account details', context);
                },
                // currentAccountPictureSize: Size(100, 160)
              ),
            ),
            ListTile(
                title: Text('Home'),
                hoverColor: Colors.black38,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BodyContainer()));
                  MysnackBar("This is the Home", context);
                },
                leading: Icon(Icons.home),
                iconColor: Colors.black),
            ListTile(
                title: Text('Profile'),
                hoverColor: Colors.black38,
                onTap: () {
                  MysnackBar('This is the Profile', context);
                },
                leading: Icon(Icons.person),
                iconColor: Colors.black),
            ListTile(
                title: Text('Contract'),
                hoverColor: Colors.black38,
                onTap: () {
                  MysnackBar('This is the Contract', context);
                },
                leading: Icon(Icons.contact_mail_sharp),
                iconColor: Colors.black),
            ListTile(
                title: Text('Email'),
                hoverColor: Colors.black38,
                onTap: () {
                  MysnackBar('This is the Profile', context);
                },
                leading: Icon(Icons.email),
                iconColor: Colors.black),
            ListTile(
                title: Text('Settings'),
                hoverColor: Colors.black38,
                onTap: () {
                  MysnackBar('This is the Settings', context);
                },
                leading: Icon(Icons.settings),
                iconColor: Colors.black),
          ],
        ),
      ),
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Route Page:"),
      ),
      body: Center(
          child: Column(children: <Widget>[
        Container(
            margin: EdgeInsets.all(25),
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back'))),
        Container(
          child: TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => Alert_Dialog()));
            },
            child: Text('AlertPage ->'),
          ),
        ),
        Container(
          child: TextButton(
            child: Text('SimpleFormPage ->'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => SimpleFormPage()));
            },
          ),
        ),
        Container(
          child: TextButton(
            child: Text('DynamicListViewBuilder ->'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => DynamicListViewBuilder()));
            },
          ),
        ),
        Container(
          child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => DynamicGridView()));
              },
              child: Text('DynamicGridView ->')),
        ),
        Container(
          child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => Tab_Bar()));
              },
              child: Text('TabBar ->')),
        ),
        Container(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => Active1()));
            },
            child: Text('Simple Navigation'),
          ),
        ),
        Container(
          child: TextButton(
            child: Text('CardView'),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => CardView()));
            },
          ),
        ),
        Container(
          child: TextButton(
            child: Text('TestPage'),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => TestPage()));
            },
          ),
        )
      ])),
    );
  }
}
