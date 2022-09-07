import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/widgets/icon_area/icon_area_list.dart';

import '../../item/icon_area_items/trading_menu.dart';

class TradingIconArea extends StatelessWidget {
  const TradingIconArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20, top: 6),
      height: MediaQuery.of(context).size.height * 0.88,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF242F9B).withOpacity(0.15),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: IconAreaList(
        iconList: tradingMenuList,
      ),
    );
  }
}
