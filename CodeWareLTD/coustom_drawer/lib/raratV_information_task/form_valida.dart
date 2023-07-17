import 'package:flutter/material.dart';

class DemoCode extends StatefulWidget {
  @override
  _DemoCodeState createState() => _DemoCodeState();
}

class _DemoCodeState extends State<DemoCode> {
  final _formKey = GlobalKey<FormState>();
  bool visibility = true;
  late String _name;
  late String _mobile;
  late String _email;
  late String _password;
  Map<String, String> map_result = {};
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      map_result['name'] = _name;
      map_result['mobile'] = _mobile;
      map_result['email'] = _email;
      map_result['password'] = _password;
      // Perform desired action with form data
      print(map_result);
      Navigator.pop(context, map_result);
    } else {
      if (_textEditingController_name.text.isEmpty) {
        FocusScope.of(context).requestFocus(focusName);
      } else if (_textEditingController_mobile.text.length < 10) {
        FocusScope.of(context).requestFocus(focusMobile);
      } else if (_textEditingController_email.text.isEmpty) {
        FocusScope.of(context).requestFocus(focusEmail);
      } else if (_textEditingController_password.text.length < 8) {
        FocusScope.of(context).requestFocus(focusPassword);
      }
    }
  }

  final FocusNode focusName = FocusNode();
  final FocusNode focusMobile = FocusNode();
  final FocusNode focusEmail = FocusNode();
  final FocusNode focusPassword = FocusNode();
  TextEditingController _textEditingController_name = TextEditingController();
  TextEditingController _textEditingController_mobile = TextEditingController();
  TextEditingController _textEditingController_email = TextEditingController();
  TextEditingController _textEditingController_password =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passenger Information'),
      ),
      body: Container(
        // margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(16),

        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  // autofocus ture korle nije nije keybord on hoia jay
                  //   autofocus: true,
                  controller: _textEditingController_name,
                  textInputAction: TextInputAction.next,
                  focusNode: focusName,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      labelText: 'Name :',
                      hintText: 'Enter your Name :',
                      hintStyle: TextStyle(color: Colors.black26),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person)),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                  onTap: () {
                    setState(() {
                      setState(() {});
                      print('onTab');
                    });
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _textEditingController_mobile,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  focusNode: focusMobile,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      labelText: 'Mobile :',
                      hintText: 'Enter your mobile :',
                      hintStyle: TextStyle(color: Colors.black26),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.mobile_friendly)),
                  validator: (value) {
                    if (!value!.isValidPhone) {
                      return 'Enter valid 01xxxxxxxxx';
                    }
                    ;
                    return null;
                  },
                  onSaved: (value) {
                    _mobile = value!;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _textEditingController_email,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      labelText: 'Email :',
                      hintText: 'Enter your email :',
                      hintStyle: TextStyle(color: Colors.black26),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email)),
                  validator: (value) {
                    if (!value!.isValidEmail) {
                      return 'Enter valid email example@gmail.com';
                    }
                    ;
                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  focusNode: focusPassword,
                  controller: _textEditingController_password,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  textInputAction: TextInputAction.go,
                  onEditingComplete: () {
                    _submitForm();
                    print('onEditingComplete');
                  },
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
                  validator: (value) {
                    // if(value == null){
                    //   return "Please enter a passsword";
                    // }
                    //ata nicher j null check kore ata
                    if (!value!.isValidPassword) {
                      return 'Please enter a password Ex@mple123';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _password = value!;
                  },
                ),
                SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: () {
                    _submitForm();
                    // FocusScope.of(context).requestFocus(focusName);
                    //  Navigator.pop(context, map_result);
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

extension extString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName {
    final nameRegExp =
        new RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp = RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)");
    return passwordRegExp.hasMatch(this);
  }

  bool get isNotNull {
    return this != null;
  }

  bool get isValidPhone {
    final phoneRegExp = RegExp(r"^\+?0[0-9]{10}$");
    return phoneRegExp.hasMatch(this);
  }
}
