import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GeneralCard extends StatelessWidget {
  Widget content;
  EdgeInsets padding;
  double height;
  double defaultWidth;

  GeneralCard({
    super.key,
    this.height = 0,
    this.defaultWidth = 0,
    required this.padding,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    defaultWidth == 0 ? MediaQuery.of(context).size.width * 0.90 : defaultWidth;
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
              color: const Color(0xFF242F9B).withOpacity(0.25),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: content,
      ),
    );
  }
}
