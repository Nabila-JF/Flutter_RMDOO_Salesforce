import 'package:flutter/material.dart';
import '../../item/icon_area_items/home_menu.dart';
import '../icon_area/icon_area_list.dart';

class HomeIconArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.55,
      width: MediaQuery.of(context).size.width,
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
      child: Container(
        margin: const EdgeInsets.only(bottom: 40),
        child: IconAreaList(
          iconList: homeMenuList,
        ),
      ),
    );
  }
}