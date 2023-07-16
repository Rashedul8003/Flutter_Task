import 'package:flutter/material.dart';

class FormValidation1 extends StatefulWidget {
  const FormValidation1({Key? key}) : super(key: key);

  @override
  State<FormValidation1> createState() => _FormValidation1State();
}

class _FormValidation1State extends State<FormValidation1> {
  final _formKey1 = GlobalKey<FormState>();

  late String _name;
  late String _email;
  late String _password;
  late String _mobile;

  void _submitForm() {
    if (_formKey1.currentState!.validate()) {
      _formKey1.currentState!.save();

      // Perform desired action with form data
      print('Name: $_name');
      print('Email: $_email');
      print('Password: $_password');
      print('Password: $_mobile');
    }
  }

  bool visibility = true;
  TextEditingController _textEditingController_name = TextEditingController();
  TextEditingController _textEditingController_mobile = TextEditingController();
  TextEditingController _textEditingController_email = TextEditingController();
  Map<String, dynamic> map_result = {};

  void addToMap() {
    map_result['name'] = _textEditingController_name.text;
    map_result['mobile'] = _textEditingController_mobile.text;
    map_result['email'] = _textEditingController_email.text;
    print(map_result);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController_email.addListener(() {
      setState(() {});
    });
    // ata dile close icon ta live er moto kaj kore check it with output
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Center(
                child: Text('Passenger Information',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(10),
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Center(
                  child: SingleChildScrollView(
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            key: _formKey1,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a name';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _name = value!;
                            },
                            decoration: InputDecoration(
                              labelText: 'Name :',
                              hintText: 'Enter your Name :',
                              hintStyle: TextStyle(color: Colors.black26),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            key: _formKey1,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a mobile';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _mobile = value!;
                            },
                            decoration: InputDecoration(
                              labelText: 'Mobile :',
                              hintText: '+8801xxxxxxxxx :',
                              hintStyle: TextStyle(color: Colors.black26),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            key: _formKey1,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter an email';
                              }
                              if (!value.contains('@')) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _email = value!;
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.red,
                              ),
                              suffixIcon: _textEditingController_email
                                      .text.isEmpty
                                  ? SizedBox(
                                      width: 0,
                                    )
                                  : IconButton(
                                      onPressed: () {
                                        _textEditingController_email.clear();
                                      },
                                      icon: Icon(Icons.close),
                                    ),
                              labelText: 'Email :',
                              hintText: 'example@gmail.com',
                              hintStyle: TextStyle(color: Colors.black26),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            key: _formKey1,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a password';
                              }
                              if (value.length < 6) {
                                return 'Password must be at least 6 characters';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _password = value!;
                            },
                            //  controller: _textEditingController_mobile,
                            decoration: InputDecoration(
                              labelText: 'Password :',
                              hintText: 'password :',
                              hintStyle: TextStyle(color: Colors.black26),
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: IconButton(
                                icon: visibility
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility),
                                onPressed: () {
                                  visibility = !visibility;
                                  setState(() {});
                                },
                              ),
                            ),
                            obscureText: visibility,
                          ),
                          ElevatedButton(
                            onPressed: _submitForm,
                            child: Text('Submit'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
