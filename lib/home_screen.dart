import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/item/home/home_menu.dart';
import 'package:rmdoo_salesforce/layout/background.dart';
import 'package:rmdoo_salesforce/widget/home/card.dart';

import 'package:rmdoo_salesforce/widget/home/navbar.dart';
import 'package:rmdoo_salesforce/widget/home/iconArea.dart';
import 'package:rmdoo_salesforce/widget/home/quick_info.dart';

class HomeScreen extends StatelessWidget {
  int _indexPage = 0;
  @override
  Widget build(BuildContext context) {
    var menu;
    return Scaffold(
      body: Stack(
        children: [
          // Background App
          const BackgroundColor(),

          // Widget List
          SingleChildScrollView(
            child: Column(
              children: [
                // Space from top
                const SizedBox(
                  height: 55,
                ),

                ProfileCard(),
                QuickInfo(),
                // SizedBox(height: 15),
                // Icon Menu

                iconArea(),

              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: navbar(
        onChange: (val) {},
        defaultSelectedIndex: 0,
      ),
      //backgroundColor: Colors.white,
    );
  }
}
