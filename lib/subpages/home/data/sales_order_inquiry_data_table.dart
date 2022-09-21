import 'package:flutter/material.dart';

class SalesOrderInquiryDataTable extends StatelessWidget {
  const SalesOrderInquiryDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        dividerThickness: 0,
        columns: const [
          DataColumn(
            label: Text(
              "ITEM NAME",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff242F9B),
              ),
            ),
          ),
          DataColumn(
            label: Text(
              "SPECIFICATIONS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff242F9B),
              ),
            ),
          ),
          DataColumn(
            label: Text(
              "ORDER QTY",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff242F9B),
              ),
            ),
          ),
          DataColumn(
            label: Text(
              "PP",
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
      ),
    );
  }
}
