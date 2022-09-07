import 'package:flutter/material.dart';

class TransactionMonthlyDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      dividerThickness: 0,
      columns: const [
        DataColumn(
          label: Expanded(
            child: Text(
              "NO.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff242F9B),
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              "SALDO",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff242F9B),
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              "NOMINAL",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff242F9B),
              ),
            ),
          ),
        )
      ],
      rows: const [
        DataRow(
          cells: [
            DataCell(
              Expanded(
                child: Text(
                  "1.",
                  style: TextStyle(
                    color: Color(0xff242F9B),
                  ),
                ),
              ),
            ),
            DataCell(
              Expanded(
                child: Text(
                  "CASH",
                  style: TextStyle(
                    color: Color(0xff242F9B),
                  ),
                ),
              ),
            ),
            DataCell(
              Expanded(
                child: Text(
                  "0",
                  style: TextStyle(
                    color: Color(0xff242F9B),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
