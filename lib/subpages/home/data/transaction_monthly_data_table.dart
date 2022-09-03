import 'package:flutter/material.dart';

class TransactionMonthlyDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(columns: [
      DataColumn(label: Text("NO"))
    ], rows: [
      DataRow(
        cells: [
          DataCell(
            Text("Test")
          ),
        ],
      )
    ]);
  }
}
