import 'package:flutter/material.dart';

class Swich_Button_Class extends StatefulWidget {
  final Function callbackfunction;
  Swich_Button_Class({Key? key, required this.callbackfunction})
      : super(key: key);

  @override
  State<Swich_Button_Class> createState() => _SwichButtonClassState();
}

class _SwichButtonClassState extends State<Swich_Button_Class> {
  bool buttonValue = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Switch(
              value: buttonValue,
              onChanged: (val) {
                widget.callbackfunction(val);
                setState(() {
                  buttonValue = val;
                });
              })
        ],
      ),
    );
  }
}
//akhane callback() hoiche child theke parent a  just true false
// value pass korar maddome value scafold backround color change hoiche
//r full code niche deya ache  ,,  khali main.dart er modde code clean kore past
// kore dile e hobe   r help koreche hahat vai

//
// import 'package:coustom_drawer/card.dart';
// import 'package:coustom_drawer/metarialswich.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   bool a = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: a ? Colors.red : Colors.cyan,
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Swich_Button_Class(callbackfunction: (value) {
//         a = value;
//         setState(() {
//         // ata dite e hobe na hole o bujbe na or color change hobe
//         // r ata puro class k ekbar load kore again });
//         print(a);
//       }),
//Text(buttonValue ? 'Your Swich ON' : 'Your Swich OFF'),
//       //CallBackClass()  // just ata body te dile e kaj korbe
//     );
//   }
// }
