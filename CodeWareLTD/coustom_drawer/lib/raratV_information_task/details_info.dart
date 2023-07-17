import 'package:flutter/material.dart';

class DetailsInfo extends StatefulWidget {
  const DetailsInfo({Key? key}) : super(key: key);

  @override
  State<DetailsInfo> createState() => _DetailsInfoState();
}

class _DetailsInfoState extends State<DetailsInfo> {
  bool visibility = true;
  TextEditingController _textEditingController_name = TextEditingController();
  TextEditingController _textEditingController_mobile = TextEditingController();
  TextEditingController _textEditingController_email = TextEditingController();
  TextEditingController _textEditingController_password =
      TextEditingController();

  ValueNotifier<String> email = ValueNotifier("");

  Map addToMap(
      {required String name,
      required String mobile,
      required String email,
      required String password}) {
    Map<String, String> map_result = {};
    map_result['name'] = name;
    map_result['mobile'] = mobile;
    map_result['email'] = email;
    map_result['password'] = password;

    print(map_result);
    return map_result;
  }

  @override
  void initState() {
    // _textEditingController_email.addListener(() {
    //   setState(() {});
    // });
    super.initState();

    // ata dile close icon ta live er moto kaj kore check it with output
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          FocusManager.instance.primaryFocus!.unfocus(), // hide keyboard
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
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
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: _textEditingController_name,
                        decoration: InputDecoration(
                            labelText: 'Name :',
                            hintText: 'Enter your Name :',
                            hintStyle: TextStyle(color: Colors.black26),
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: _textEditingController_mobile,
                        keyboardType: TextInputType.number,
                        maxLength: 11,
                        decoration: InputDecoration(
                          labelText: 'Mobile :',
                          hintText: '+8801xxxxxxxxx :',
                          hintStyle: TextStyle(color: Colors.black26),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.mobile_friendly),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: _textEditingController_email,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {
                          email.value = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.red,
                          ),
                          suffixIcon: ValueListenableBuilder(
                            valueListenable: email,
                            builder: (context, data, child) {
                              if (data.isNotEmpty) {
                                return IconButton(
                                  onPressed: () {
                                    _textEditingController_email.clear();
                                  },
                                  icon: Icon(Icons.close),
                                );
                              }
                              return SizedBox.shrink();
                            },
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
                      TextField(
                        controller: _textEditingController_password,
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
                      Divider(height: 20, color: Colors.black26, thickness: 2),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // Adjust size as needed
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: () {
                          dynamic mapResult = addToMap(
                              name: _textEditingController_name.text,
                              email: _textEditingController_email.text,
                              password: _textEditingController_password.text,
                              mobile: _textEditingController_mobile.text);
                          Navigator.pop(context, mapResult);
                        },
                        child: Text('Submit', style: TextStyle(fontSize: 25)),
                      ),
                    ],
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
