import 'package:flutter/material.dart';

import '../../layout/icon_item_layout.dart';

class HomeIconArea extends StatelessWidget {
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
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Expanded(
                    child: IconItem(
                        "assets/images/home/limitcoin.png", "Credit\nLimit"),
                  ),
                  Expanded(
                    child: IconItem("assets/images/home/moneymonth.png",
                        "Transaction\nMonthly"),
                  ),
                  Expanded(
                    child: IconItem("assets/images/home/moneyyear.png",
                        "Transaction\nYearly"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Expanded(
                    child: IconItem(
                        "assets/images/home/wallet.png", "Point and\nDeposit"),
                  ),
                  Expanded(
                    child: IconItem("assets/images/home/barcode-scan.png",
                        "Barcode Stock\nChecking"),
                  ),
                  Expanded(
                    child: IconItem("assets/images/home/growth-chart.png",
                        "Top 20 Sales\nAmount"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Expanded(
                    child: IconItem("assets/images/home/shopping-basket.png",
                        "top 20 Sales\nQuantity"),
                  ),
                  Expanded(
                    child: IconItem("assets/images/home/delivery-truck.png",
                        "Sales Shipment\nInquiry"),
                  ),
                  Expanded(
                    child: IconItem("assets/images/home/clipboard.png",
                        "Sales Order\nInquiry"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
