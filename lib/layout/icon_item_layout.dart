import 'package:flutter/material.dart';
Container IconItem(String imagePath, String title) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Container(
          height: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imagePath)),
          ),
        ),

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              overflow: TextOverflow.clip,
              fontSize: 10.5,
              fontWeight: FontWeight.bold,
              color: Color(0xFF242F9B),
            ),
          ),
        ),
        Container(height: 7.5)
      ],
    ),
  );
}