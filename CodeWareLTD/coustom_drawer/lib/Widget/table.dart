import 'package:flutter/material.dart';

// https://medium.com/flutter-community/table-in-flutter-beyond-the-basics-8d31b022b451

class TableClass extends StatelessWidget {
  const TableClass({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Table(
            border: TableBorder.all(width: 1, color: Colors.red),
            children: [
              TableRow(children: [
                TableCell(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('ID'),
                )),
                TableCell(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Name'),
                )),
                TableCell(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Subject'),
                )),
              ]),
              TableRow(children: [
                TableCell(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('01'),
                )),
                TableCell(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Sajidur',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                )),
                TableCell(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Flutter'),
                )),
              ]),
              TableRow(children: [
                TableCell(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('02'),
                )),
                TableCell(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Rakibul'),
                )),
                TableCell(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Dart'),
                )),
              ]),
              TableRow(children: [
                TableCell(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('03'),
                )),
                TableCell(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Name'),
                )),
                TableCell(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Subject'),
                )),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
