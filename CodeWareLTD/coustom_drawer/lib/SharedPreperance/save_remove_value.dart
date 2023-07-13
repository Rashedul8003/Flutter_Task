import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SaveRemoveValueBySharedPreference extends StatefulWidget {
  const SaveRemoveValueBySharedPreference({Key? key}) : super(key: key);

  @override
  State<SaveRemoveValueBySharedPreference> createState() =>
      _SaveRemoveValueBySharedPrefState();
}

class _SaveRemoveValueBySharedPrefState
    extends State<SaveRemoveValueBySharedPreference> {
  int count = 0;
  void incrementCoounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      count++;
    });
    prefs.setInt('KeyValue', count);
    print('incrementCoounter()');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValueForSharedPre();
  }

  void getValueForSharedPre() async {
    final pre = await SharedPreferences.getInstance();
    setState(() {
      count = pre.getInt('KeyValue') ?? 0;
    });
  }

  void removeSharedPreferenceData() async {
    final ppre = await SharedPreferences.getInstance();
    final sucess = ppre.remove('KeyValue');
    print(sucess);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$count',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: incrementCoounter,
                child: Text('Clik for Increment')),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: removeSharedPreferenceData,
                child: Text('Remove Increment'))
          ],
        ),
      ),
    );
  }
}
