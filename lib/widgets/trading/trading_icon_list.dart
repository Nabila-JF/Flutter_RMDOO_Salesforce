import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/item/icon_model.dart';

import '../../layout/icon_item_layout.dart';
class TradingIconList extends StatelessWidget {
  final List<IconModel> tradingIcons;

  TradingIconList({required this.tradingIcons});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
      children: tradingIcons.map((icon) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: InkWell(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return icon.route;
              // }));
              //do something when the icon is clicked here
            },
            child:  IconItem(
                icon.iconImagePath,
              icon.iconText
            ),
          ),
        );
      }).toList(),

    );
  }
}

