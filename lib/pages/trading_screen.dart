import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/widgets/trading/trading_icon_area.dart';

import '../layout/background.dart';

class TradingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background App
          const BackgroundColor(),

          SingleChildScrollView(
            child: Column(
              children: [
                // Space from top
                const SizedBox(
                  height: 55,
                ),
                TradingIconArea(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}