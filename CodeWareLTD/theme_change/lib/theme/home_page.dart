import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/profile_pic.png",
                width: 200,
                height: 200,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Your Name",
                style: _textTheme.headlineMedium?.copyWith(
                    color: isDark ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "@yourusername",
                style: _textTheme.titleMedium,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "This is a simple Status",
              ),
              SizedBox(
                height: 10,
              ),
              TextField(),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(child: Text("Just Click"), onPressed: () {}),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
