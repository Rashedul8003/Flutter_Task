import 'package:flutter/material.dart';

class CallBackClass extends StatefulWidget {
  const CallBackClass({Key? key}) : super(key: key);

  @override
  State<CallBackClass> createState() => _CallBackClassState();
}

class _CallBackClassState extends State<CallBackClass> {
  String mes = 'Default';
  callBack(passValue) {
    setState(() {
      mes = passValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 70,
            margin: EdgeInsets.only(left: 50, right: 40, top: 40, bottom: 20),
            decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2, color: Colors.black),
            ),
            child: Center(
                child: Text(
              'Last value will be =>' + mes,
              style: TextStyle(fontSize: 25),
            )),
          ),
          Container(
            width: double.maxFinite,
            height: 70,
            margin: EdgeInsets.only(left: 60, right: 60, top: 20, bottom: 10),
            color: Colors.cyan,
            child: TextButton(
              onPressed: () {
                setState(() {
                  mes = 'SelfClassValue';
                });
              },
              child: Text(
                'Self Class Value',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          ClassForCallBackMethod(
              topic: 'OtherClassValue', callbackfunction: callBack),
        ],
      ),
    );
  }
}

class ClassForCallBackMethod extends StatelessWidget {
  final String topic;
  final Function callbackfunction;
  const ClassForCallBackMethod(
      {Key? key, required this.topic, required this.callbackfunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 70,
      margin: EdgeInsets.only(left: 60, right: 60, top: 20, bottom: 10),
      color: Colors.cyan,
      child: TextButton(
        onPressed: () {
          callbackfunction(topic);
          print('ClassForCallBackMethod !!!');
        },
        child: Text(
          topic,
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
