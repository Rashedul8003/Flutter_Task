import 'package:coustom_drawer/raratV_information_task/details_info.dart';
import 'package:coustom_drawer/raratV_information_task/form_validation.dart';
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
  Map<String, dynamic> received_result = {};
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
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
                received_result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsInfo(),
                  ),
                );

                setState(() {});
              },
              title: Text('Add Info'),
            ),
          ),
          Card(
            color: Colors.blueGrey.shade300,
            child: ListTile(
              onTap: () async {
                received_result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    // builder: (context) => FormValidation(),
                    builder: (context) => MyFormPage(),
                  ),
                );
                setState(() {});
              },
              title: Text('FormValidation'),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15),
              height: 30,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade300,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.white,
                        child: ListTile(
                          title: Text(
                              'Name :    ${received_result['name'] == null ? ' ' : received_result['name']}'),
                          leading: Icon(Icons.person),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.white,
                        child: ListTile(
                          title: Text(
                              'Mobile :    ${received_result['mobile'] == null ? ' ' : received_result['mobile']}'),
                          leading: Icon(Icons.mobile_friendly),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.white,
                        child: ListTile(
                          title: Text(
                              'Email :    ${received_result['email'] == null ? ' ' : received_result['email']}'),
                          leading: Icon(Icons.email),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.white,
                        child: ListTile(
                          title: Text(
                              'Password :    ${received_result['password'] == null ? ' ' : received_result['password']}'),
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
      ),
    );
  }
}
