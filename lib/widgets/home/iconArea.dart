import 'package:flutter/material.dart';

import '../../layout/icon_item_layout.dart';


class iconArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF242F9B).withOpacity(0.15),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top:20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  // SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  Expanded(child: IconItem("limitcoin", "Credit\nLimit")),
                  // SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  Expanded(child: IconItem("moneymonth", "Transaction\nMonthly")),
                  // SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  Expanded(child: IconItem("moneyyear", "Transaction\nYearly")),
                  // SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [

                  Expanded(child: IconItem("wallet", "Point and\nDeposit")),

                  Expanded(child: IconItem("barcode-scan", "Barcode Stock\nChecking")),

                  Expanded(child: IconItem("growth-chart", "Top 20 Sales\nAmount")),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [

                  Expanded(child: IconItem("shopping-basket", "top 20 Sales\nQuantity")),

                  Expanded(child: IconItem("delivery-truck", "Sales Shipment\nInquiry")),

                  Expanded(child: IconItem("clipboard", "Sales Order\nInquiry")),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}
