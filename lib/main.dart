import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:rmdoo_salesforce/home_screen.dart';
=======
import 'package:rmdoo_salesforce/pages/home_screen.dart';

import 'main_screen.dart';
>>>>>>> 56d7e7d4af45eefdbf549a64f4c2085b62a19890

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
