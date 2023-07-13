import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DateTimePickerClass extends StatefulWidget {
  const DateTimePickerClass({Key? key}) : super(key: key);

  @override
  State<DateTimePickerClass> createState() => _DateTimePickerClassState();
}

class _DateTimePickerClassState extends State<DateTimePickerClass> {
  DateTime? _dateTime;
  DateTime? _dateTime1;
  TimeOfDay? _timeOfDay;

  DateTime? local = DateTime.now().toLocal();
////////////////////////DateTime///////////////////////////////////
  getDate() async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year - 20),
        lastDate: DateTime(DateTime.now().year + 2));
    setState(() {
      _dateTime = date;
    });
// getDat() and getDate1 dui babe kora ache ,, ekta setState kore e ekta future kore .. duita dia e kaj hoy
    print('dateTime1 in getDate() ${_dateTime}');
  }

  Future getDate1() async {
    DateTime? date = await showDatePicker(
        context: context,
        // initialDate: DateTime.now(),
        // firstDate: DateTime(DateTime.now().year - 20),
        // lastDate: DateTime(DateTime.now().year + 2));
        initialDate: _dateTime!,
        firstDate: _dateTime!,
        lastDate: _dateTime!.add(Duration(days: 365 * 2)));

    _dateTime1 = date;
    if (kDebugMode) {
      print('dateTime1 in getDate1() $date');
    }
  }

  //////////////////////////////////TimeOfDay/////////////////////////////////
  getTime() async {
    TimeOfDay? timeOfDay =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    setState(() {
      _timeOfDay = timeOfDay;
      print('In getTime()$_timeOfDay');
    });
  }

//////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _dateTime == null
                  ? Text('Chose date', style: TextStyle(fontSize: 30))
                  : Text(
                      'DD ${_dateTime?.day},MM ${_dateTime?.month},YYYY ${_dateTime?.year}',
                      style: TextStyle(fontSize: 30)),
              SizedBox(height: 6),
              ElevatedButton(
                child: Text("Pick Date"),
                onPressed: () {
                  getDate();
                  print('getDate() in ElevatedButton $_dateTime');
                },
              ),
              SizedBox(height: 6),
              _dateTime1 == null
                  ? Text('Chose date1', style: TextStyle(fontSize: 30))
                  : Text(
                      'DD ${_dateTime1?.day},MM ${_dateTime1?.month},YYYY ${_dateTime1?.year}',
                      style: TextStyle(fontSize: 30)),
              SizedBox(height: 6),
              ElevatedButton(
                child: Text("Pick Date1"),
                onPressed: () async {
                  await getDate1();
                  setState(() {
                    print('_dateTime1 $_dateTime1');
                  });
                },
              ),
              SizedBox(height: 12),
              Divider(color: Colors.red, height: 10),
              SizedBox(height: 4),
              _timeOfDay == null
                  ? Text('Choose Time', style: TextStyle(fontSize: 30))
                  : Text(
                      'Time :Hour ${_timeOfDay?.hour} Minute ${_timeOfDay?.minute}',
                      style: TextStyle(fontSize: 30)),
              SizedBox(height: 6),
              ElevatedButton(
                child: Text("Pick Time"),
                onPressed: () {
                  getTime();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
