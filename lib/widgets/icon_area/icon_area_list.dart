import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/item/icon_model.dart';

import '../../layout/icon_item_layout.dart';

class IconAreaList extends StatelessWidget {
  final List<IconModel> iconList;

  IconAreaList({required this.iconList});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: GridView.count(
        crossAxisCount: 3,
        scrollDirection: Axis.vertical,
        children: iconList.map((icon) {
          return InkWell(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return icon.route;
              // }));
              //do something when the icon is clicked here
            },
            child: IconItem(icon.iconImagePath, icon.iconText),
          );
        }).toList(),
      ),
    );
  }
}
