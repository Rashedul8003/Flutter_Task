import 'package:flutter/material.dart';

class DataTableClass extends StatelessWidget {
  const DataTableClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Center(
        child: DataTable(columns: [
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Id')),
          DataColumn(label: Text('Roll')),
        ], rows: [
          DataRow(cells: [
            DataCell(Text('Rakib')),
            DataCell(Text('10')),
            DataCell(Text('1001')),
          ]),
          DataRow(cells: [
            DataCell(Text('Rakib')),
            DataCell(Text('10')),
            DataCell(Text('1001')),
          ]),
          DataRow(cells: [
            DataCell(Text('Rakib')),
            DataCell(Text('10')),
            DataCell(Text('1001')),
          ]),
          DataRow(cells: [
            DataCell(Text('Rakib')),
            DataCell(Text('10')),
            DataCell(Text('1001')),
          ]),
        ]),
      ),
    );
  }
}
