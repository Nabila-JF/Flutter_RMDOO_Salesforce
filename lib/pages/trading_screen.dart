import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/widgets/trading/trading_icon_area.dart';

import '../layout/background.dart';

class TradingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundColor(),
        SafeArea(child: SingleChildScrollView(child: TradingIconArea())),
      ],
    );
  }
}
