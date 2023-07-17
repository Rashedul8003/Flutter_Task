import 'package:coustom_drawer/raratV_information_task/details_info.dart';
import 'package:coustom_drawer/raratV_information_task/form_valida.dart';
import 'package:flutter/material.dart';

class RahatVTask extends StatelessWidget {
  const RahatVTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const Task());
  }
}

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  Map<String, dynamic> receivedResult = {};
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 160,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          child: Center(
            child: Text('Passenger Information',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30)),
          ),
        ),
        Card(
          color: Colors.blueGrey.shade300,
          child: ListTile(
            onTap: () async {
              dynamic result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsInfo(),
                ),
              );
              if (result != null) {
                receivedResult = result;
                setState(() {});
              }
            },
            title: Text('Add Info'),
          ),
        ),
        Card(
          color: Colors.blueGrey.shade300,
          child: ListTile(
            onTap: () async {
              dynamic result = await Navigator.push(
                context,
                MaterialPageRoute(
                  // builder: (context) => FormValidation(),
                  builder: (context) => DemoCode(),
                ),
              );
              if (result != null) {
                receivedResult = result;
                setState(() {});
              }
            },
            title: Text('FormValidation'),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade300,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Center(
              child: receivedResult.isEmpty
                  ? Text("Add your information")
                  : SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            color: Colors.white,
                            child: ListTile(
                              title: Text(
                                  'Name :    ${receivedResult['name'] == null || receivedResult['name']!.isEmpty ? 'Add Your Name ' : receivedResult['name']}'),
                              leading: Icon(Icons.person),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            color: Colors.white,
                            child: ListTile(
                              title: Text(
                                  'Mobile :    ${receivedResult['mobile'] == null || receivedResult['mobile']!.isEmpty ? 'Add Your Mobile ' : receivedResult['mobile']}'),
                              leading: Icon(Icons.mobile_friendly),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            color: Colors.white,
                            child: ListTile(
                              title: Text(
                                  'Email :    ${receivedResult['email'] == null || receivedResult['email']!.isEmpty ? 'Add Your Email ' : receivedResult['email']}'),
                              leading: Icon(Icons.email),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            color: Colors.white,
                            child: ListTile(
                              title: Text(
                                  'Password :    ${receivedResult['password'] == null || receivedResult['password']!.isEmpty ? 'Add Your Password ' : receivedResult['password']}',
                                  overflow: TextOverflow.ellipsis),
                              leading: Icon(Icons.lock),
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
