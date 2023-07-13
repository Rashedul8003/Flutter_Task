import 'package:al_quran/Classes/classes.dart';
import 'package:al_quran/Data/data.dart';
import 'package:al_quran/HomePage/al_quran-page.dart';
import 'package:al_quran/SurahPage/surahpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Surah> surahs = [];

  @override
  void initState() {
    for (int i = 0; i < quranData.length; i++) {
      surahs.add(Surah(
          surahNo: quranData[i]["Surah No"],
          name: quranData[i]["Name"],
          ayats: quranData[i]["Ayats"]));
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF91C3A6),
        appBar: AppBar(
          title: Text(
            "Al Quran",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFFFFFFFF)),
          ),
          centerTitle: true,
          elevation: 4,
          backgroundColor: Color(0xFF469565),
        ),
        body:  GridView.count(

          primary: false,
          padding: const EdgeInsets.all(80),
          crossAxisSpacing: 40,
          mainAxisSpacing: 40,
          crossAxisCount: 2,
          children: [


            Container(

              padding: const EdgeInsets.all(20),



                child: Container(
                  child: Text("Al-Quran", style: TextStyle(
                    fontSize:15,

                  ),),
                  height:200,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30), //border corner radius
                    boxShadow:[
                      BoxShadow(

                        color: Colors.grey.withOpacity(0.9), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),

                      //you can set more BoxShadow() here
                    ],

                  ),

                ),

            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: const Text('SECOND'),
              ),
              color: Colors.indigo,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: const Text('THIRD'),
              ),
              color: Colors.teal,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: const Text('FOURTH'),
              ),
              color: Colors.cyan,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: const Text('FIFTH'),
              ),
              color: Colors.yellow,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: const Text('SIXTH'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: const Text('SEVENTH'),
              ),
              color: Colors.purple,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: const Text('EIGHTH'),
              ),
              color: Colors.blue,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: const Text('NINTH'),
              ),
              color: Colors.orange,
            ),
          ],
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.black12,


            child: ListView(

              children: [

                UserAccountsDrawerHeader(
                accountEmail: null,
                  accountName: null,

                  decoration: BoxDecoration(

                    image: DecorationImage(
                      image: AssetImage("assets/images/al.png"),

                      fit: BoxFit.fill,
                    ),
                  ),

                ),

                ListTile(
                  leading: Icon(Icons.book),
                  title: Text("Al-Quran"),
                  onTap: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Al_Quran(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("About"),
                  onTap: () {},
                ),

                ListTile(
                  leading: Icon(Icons.contact_mail),
                  title: Text("Contact"),
                  onTap: () {},
                )
              ],
            ),
          ),

        ),

      ),

    );
  }
}
