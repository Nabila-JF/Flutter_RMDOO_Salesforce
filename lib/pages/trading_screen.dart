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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Space from top

                Padding(
                  padding: const EdgeInsets.only(top: 65),
                  child: TradingIconArea(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}