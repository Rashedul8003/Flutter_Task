import 'package:flutter/material.dart';

class RangeDateClass extends StatefulWidget {
  const RangeDateClass({Key? key}) : super(key: key);

  @override
  State<RangeDateClass> createState() => _RangeDateClassState();
}

class _RangeDateClassState extends State<RangeDateClass> {
  DateTimeRange _dateTimeRange = DateTimeRange(
      start: DateTime.now(),
      end: DateTime
          .now()); // = er pore ata likhar uddesho holo jate 0 days  dekhay ta na hole null dekhabe

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your selected days : ${_dateTimeRange.duration.inDays}',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            Divider(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () async {
                  final DateTimeRange? dateTimeRange =
                      await showDateRangePicker(
                    context: context,
                    initialDateRange: _dateTimeRange,
                    firstDate: DateTime(2023),
                    lastDate: DateTime(2024),
                  );

                  if (dateTimeRange != null) {
                    setState(() {
                      _dateTimeRange = dateTimeRange;
                    });
                  }
                },
                child: Text('ClickForRange'))
          ],
        ),
      ),
    );
  }
}
