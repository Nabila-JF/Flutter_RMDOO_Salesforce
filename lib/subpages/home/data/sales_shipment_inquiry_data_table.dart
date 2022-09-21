import 'package:flutter/material.dart';

class SalesShipmentInquiryDataTable extends StatelessWidget {
  const SalesShipmentInquiryDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        dividerThickness: 0,
        columns: const [
          DataColumn(
            label: Text(
              "NO.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff242F9B),
              ),
            ),
          ),
          DataColumn(
            label: Text(
              "SALES NO.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff242F9B),
              ),
            ),
          ),
          DataColumn(
            label: Text(
              "SALES DATE",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff242F9B),
              ),
            ),
          ),
          DataColumn(
            label: Text(
              "CUSTOMER",
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
