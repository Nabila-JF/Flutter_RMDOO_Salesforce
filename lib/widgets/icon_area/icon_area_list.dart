import 'package:flutter/material.dart';
import 'package:rmdoo_salesforce/item/icon_model.dart';

import '../../layout/icon_item_layout.dart';

class IconAreaList extends StatelessWidget {
  final List<IconModel> iconList;

  IconAreaList({required this.iconList});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      scrollDirection: Axis.vertical,
      children: iconList.map((icon) {
        return InkWell(
          onTap: () {
            //handling when the item is clicked
            if (icon.route != null) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => icon.route),
              );
            }
          },
          child:IconItem(imagePath: icon.iconImagePath, title: icon.iconText)// IconItem( icon.iconImagePath, icon.iconText),
        );
      }).toList(),
    );
  }
}
