import 'package:flutter/material.dart';

class GeneralCard extends StatelessWidget {
  Widget content;
  EdgeInsets padding;

  GeneralCard({
    super.key,
    required this.padding,
    required this.content});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.90,
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
