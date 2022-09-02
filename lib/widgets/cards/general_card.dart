import 'package:flutter/material.dart';

class GeneralCard extends StatelessWidget {
  Widget content;
  EdgeInsets padding;
  double height = 0;

  GeneralCard({
    super.key,
    required this.padding,
    required this.content,});

  @override
  Widget build(BuildContext context) {
    double defaultWidth =MediaQuery.of(context).size.width * 0.90;
    return Center(
      child: Container(
        width: defaultWidth,
        height: height == 0 ? defaultWidth : height,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
          color: Colors.white.withOpacity(0.75),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF242F9B).withOpacity(0.25),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: content,
      ),
    );
  }
}
