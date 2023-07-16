import 'package:flutter/material.dart';

class MyFormPage extends StatefulWidget {
  @override
  _MyFormPageState createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  bool visibility = true;
  late String _name;
  late String _mobile;
  late String _email;
  late String _password;
  Map<String, dynamic> map_result = {};
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
    }
  }

  final FocusNode focusName = FocusNode();
  final FocusNode focusMobile = FocusNode();
  final FocusNode focusEmail = FocusNode();
  final FocusNode focusPassword = FocusNode();

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
                    if (value == null || value.isEmpty) {
                      FocusScope.of(context).requestFocus(focusName);

                      return 'Please enter a nameaa';
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
                    if (value == null || value.isEmpty) {
                      return 'Please enter a mobile';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _mobile = value!;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
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
                ),
                SizedBox(height: 16.0),
                TextFormField(
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
