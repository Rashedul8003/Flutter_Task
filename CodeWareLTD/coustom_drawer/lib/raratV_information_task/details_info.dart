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
  Map<String, dynamic> map_result = {};

  void addToMap() {
    map_result['name'] = _textEditingController_name.text.trim();
    map_result['mobile'] = _textEditingController_mobile.text;
    map_result['email'] = _textEditingController_email.text;
    map_result['password'] = _textEditingController_password.text;
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
            Expanded(
              flex: 1,
              child: Container(
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
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 4,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          onTap: () {
                            setState(() {});
                          },
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
                          onTap: () {
                            setState(() {});
                          },
                          controller: _textEditingController_mobile,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Mobile :',
                            hintText: '+8801xxxxxxxxx :',
                            hintStyle: TextStyle(color: Colors.black26),
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.mobile_friendly),
                            errorMaxLines: 11,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          onTap: () {
                            setState(() {});
                          },
                          controller: _textEditingController_email,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.red,
                            ),
                            suffixIcon:
                                _textEditingController_email.text.isEmpty
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
                        TextField(
                          onTap: () {
                            setState(() {});
                          },
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
                        Divider(
                            height: 20, color: Colors.black26, thickness: 2),
                        SizedBox(
                          width: 200,
                          height: 60,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              // Adjust size as needed
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            onPressed: () {
                              addToMap();
                              Navigator.pop(context, map_result);
                            },
                            child:
                                Text('Submit', style: TextStyle(fontSize: 25)),
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
      ),
    );
  }
}
