import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/item/icon_model.dart';
import 'package:rmdoo_salesforce/widgets/trading/trading_icon_list.dart';

import '../../layout/icon_item_layout.dart';

class TradingIconArea extends StatelessWidget {
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
      child: TradingIconList(
        tradingIcons: homeMenuList,
      ),
    );
  }
}
