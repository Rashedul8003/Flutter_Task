import 'package:flutter/material.dart';
import 'package:flutter_error_pages/app/views/connection_error/wrong_connection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '20+ Flutter Error Screens',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const WrongConnection(),
    );
  }
}
