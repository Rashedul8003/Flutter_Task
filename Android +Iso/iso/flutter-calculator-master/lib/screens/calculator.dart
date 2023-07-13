import 'package:calculator/model/historyitem.dart';
import 'package:calculator/provider/calculator_provider.dart';
import 'package:calculator/imports.dart';
import 'package:calculator/screens/history.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: Container(
            color: Colors.black12,


          child: ListView(

          children: [

            UserAccountsDrawerHeader(

              accountName: Text("",
              style: TextStyle(color: Colors.brown),),
              accountEmail: Text("",
                  style: TextStyle(color: Colors.cyanAccent)),
              currentAccountPicture: CircleAvatar(
                // backgroundImage: NetworkImage(
                //     "https://media.istockphoto.com/id/1137975153/vector/calculator-icon-accounting-sign-calculate-finance-symbol-stock-vector.jpg?s=612x612&w=0&k=20&c=aBQredH9x9lbqh_4MfphmfbzBFnVQ5cvH3sxgWu5GUk="
                // ),
                backgroundImage: AssetImage("assets/images/rashedul.JPG"),
              ),
              decoration: BoxDecoration(

                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1611125832047-1d7ad1e8e48f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2FsY3VsYXRvcnxlbnwwfHwwfHw%3D&w=1000&q=80",
                  ),
                  fit: BoxFit.fill,
                ),
              ),

            ),
            ListTile(
              leading: Icon(Icons.add_chart_sharp),
              title: Text(""
                  "Scientific Calculator"),
              onTap: () {},

            ),
            ListTile(
                leading: Icon(Icons.add_chart_sharp),
                title: Text(""
                    " Math Calculators"),
                onTap: () {},

            ),
            ListTile(
              leading: Icon(Icons.add_chart_sharp),
              title: Text(""
                  " Fraction Calculator"),
              onTap: () {},

            ),
            ListTile(
              leading: Icon(Icons.add_chart_sharp),
              title: Text(""
                  " Date Calculator"),
              onTap: () {},

            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text("History"),
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => History(),
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


      appBar: appbar(
        context,
        'Calculator',
        Icons.history,
        () {
          Navigator.pushNamed(context, '/history');
        },
      ),
      body: Column(
        children: [
          Container(
            width: mediaQuery.width,
            height: mediaQuery.height * .25,
            padding: EdgeInsets.symmetric(
              vertical: mediaQuery.width * 0.08,
              horizontal: mediaQuery.width * 0.06,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 20.0,
                  child: ListView(
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Consumer<CalculatorProvider>(
                        builder: (context, equation, child) => Text(
                          equation.equation,
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Consumer<CalculatorProvider>(
                  builder: (context, equation, child) => Text(
                    equation.result,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: buttonsBackgroundColor,
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(15.0),
                crossAxisSpacing: 5.0,
                childAspectRatio: 1.3,
                mainAxisSpacing: 5.0,
                crossAxisCount: 4,
                children: buttons,
              ),
            ),
          ),
        ],
      ),

    );
  }
}
