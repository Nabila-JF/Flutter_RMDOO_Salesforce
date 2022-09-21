import 'package:flutter/material.dart';

class TransactionYearlyDataTable extends StatelessWidget {
  const TransactionYearlyDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      dividerThickness: 0,
      columns: const [
        DataColumn(
          label: Text(
            "MONTH",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff242F9B),
            ),
          ),
        ),
        DataColumn(
          label: Text(
            "VALUE",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff242F9B),
            ),
          ),
        ),
      ],
      rows: const [
        DataRow(
          cells: [
            DataCell(
              Text(
                "",
                style: TextStyle(
                  color: Color(0xff242F9B),
                ),
              ),
            ),
            DataCell(
              Text(
                "",
                style: TextStyle(
                  color: Color(0xff242F9B),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
