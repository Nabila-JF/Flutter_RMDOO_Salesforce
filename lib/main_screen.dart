import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/pages/finance_screen.dart';
import 'package:rmdoo_salesforce/pages/inventory_screen.dart';
import 'package:rmdoo_salesforce/pages/master_screen.dart';
import 'package:rmdoo_salesforce/pages/trading_screen.dart';
import 'package:rmdoo_salesforce/widgets/navbar/navbar.dart';
import 'pages/home_screen.dart';
import 'pages/product_screen.dart';

class MainScreen extends StatefulWidget {

  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _indexPage = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ProductScreen(),
    TradingScreen(),
    InventoryScreen(),
    MasterScreen(),
    FinanceScreen()
  ];

  @override
  Widget build(BuildContext context) {
    var menu;
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_indexPage),
      ),

      bottomNavigationBar: navbar(
        onChange: (val) {
          setState(() {
            _indexPage = val;
          });
        },
        defaultSelectedIndex: 0,
      ),

    );
  }
}

