import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.indigo.shade800,
          Colors.indigoAccent,
          Colors.indigo.shade600
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.location_on_outlined,
                        size: 80, color: Colors.white, weight: 15),
                    Text(
                      "VISION GO",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: Colors.grey))),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Email or Phone number",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)))
                                    // border: InputBorder.none
                                    ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: Colors.grey))),
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                obscureText:
                                    _passwordVisible, //This will obscure text dynamically
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  hintText: 'Enter your password',
                                  // Here is key idea
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Theme.of(context).primaryColorDark,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                            height: 50, //height of button
                            width: 180, //width of button

                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Log In'),
                                style: ElevatedButton.styleFrom(
                                  shadowColor: Colors.indigo,
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontStyle: FontStyle.normal),
                                  elevation: 20,
                                ))),
                        // Container(
                        //   height: 50,
                        //   margin: EdgeInsets.symmetric(horizontal: 50),
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(50),
                        //       color: Colors.indigo.shade800),
                        //   child: Center(
                        //     child: Text(
                        //       "Login",
                        //       style: TextStyle(
                        //         color: Colors.white,
                        //         fontWeight: FontWeight.bold,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Continue with social media",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
