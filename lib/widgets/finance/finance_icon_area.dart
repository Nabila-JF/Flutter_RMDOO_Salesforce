import 'package:flutter/material.dart';
import '../icon_area/icon_area_list.dart';

import '../../item/icon_area_items/finance_menu.dart';

class FinanceIconArea extends StatelessWidget {
  const FinanceIconArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 4, top: 4),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
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
        iconList: financeMenuList,
      ),
    );
  }
}
