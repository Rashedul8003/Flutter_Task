import 'package:flutter/material.dart';
import 'package:some_project_list/currency_exchange/ui/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text('Currency Exchange'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => DashBorad()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
