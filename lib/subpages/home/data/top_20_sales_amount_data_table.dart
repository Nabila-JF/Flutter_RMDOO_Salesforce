import 'package:flutter/material.dart';

class Top20SalesAmountDataTable extends StatelessWidget {
  const Top20SalesAmountDataTable({super.key});

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
              "PRODUCT",
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
              "AMOUNT",
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
              Text(''),
            ),
            DataCell(
              Text(''),
            ),
            DataCell(
              Text(''),
            ),
          ],
        )
      ],
    );
  }
}
