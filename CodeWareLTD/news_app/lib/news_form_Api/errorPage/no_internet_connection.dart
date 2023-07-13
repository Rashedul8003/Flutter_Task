import 'package:flutter/material.dart';
import 'package:news_app/news_form_Api/errorPage/error_message.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen(
      {super.key, required this.callback, required this.errorMessage});
  final Function() callback;
  final ErrorMessage errorMessage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/Connection_Lost.png',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height),
          Positioned(
            bottom: 180,
            left: 30,
            child: Text(
              errorMessage.message,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
          ),
          const Positioned(
            bottom: 140,
            left: 30,
            child: Text(
              'Please check your internet connection\n and try again',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18,
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            left: 50,
            right: 50,
            child: TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                // fixedSize: MaterialStateProperty.all<Size>(Size(250, 50)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                callback();
              },
              child: Text(
                'Retry',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
