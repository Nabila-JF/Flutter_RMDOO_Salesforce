import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/pages/home_screen.dart';

import 'main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salesforce RMDOO',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: MainScreen(),
    );
  }
}
