import 'package:flutter/material.dart';

class IconItem extends StatelessWidget{
  String imagePath;
  String title;

  IconItem({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF242F9B).withOpacity(0.15),
            spreadRadius: 0,
            blurRadius: 5,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
        gradient: const LinearGradient(colors: [
          Color(0xFFE8E9F5),
          Colors.white,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Image.asset(imagePath, height: 50, width: 50),
          ),

          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              overflow: TextOverflow.clip,
              fontSize: 10.5,
              fontWeight: FontWeight.bold,
              color: Color(0xFF242F9B),
            ),
          ),

          // Container(height: 7.5)
        ],
      ),
    );
  }

}
// Container IconItem(String imagePath, String title) {
//
// }
