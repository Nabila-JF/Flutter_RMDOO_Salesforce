import 'package:flutter/material.dart';

class iconArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.height * 0.475,
      ),
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
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0225,
              ),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  Expanded(child: iconHome("limitcoin", "Credit\nLimit")),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  Expanded(
                      child: iconHome("moneymonth", "Transaction\nMonthly")),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  Expanded(child: iconHome("moneyyear", "Transaction\nYearly")),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0225,
              ),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  Expanded(child: iconHome("wallet", "Point and\nDeposit")),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  Expanded(
                      child:
                          iconHome("barcode-scan", "Barcode Stock\nChecking")),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  Expanded(
                      child: iconHome("growth-chart", "Top 20 Sales\nAmount")),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0225,
              ),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  Expanded(
                      child: iconHome(
                          "shopping-basket", "top 20 Sales\nQuantity")),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  Expanded(
                      child: iconHome(
                          "delivery-truck", "Sales Shipment\nInquiry")),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                  Expanded(
                      child: iconHome("clipboard", "Sales Order\nInquiry")),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container iconHome(String image, String title) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF242F9B).withOpacity(0.15),
            spreadRadius: 0,
            blurRadius: 5,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
        gradient: const LinearGradient(colors: [
          Color(0xFFE8E9F5),
          Colors.white,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Column(
        children: [
          Container(height: 5),
          Container(
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/home/" + image + ".png")),
            ),
          ),
          Container(
            height: 2.5,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 10.5,
              fontWeight: FontWeight.bold,
              color: Color(0xFF242F9B),
            ),
          ),
          Container(height: 7.5)
        ],
      ),
    );
  }
}
