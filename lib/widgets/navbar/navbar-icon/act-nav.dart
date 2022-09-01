import 'package:flutter/material.dart';

Container navbarActIcon(String image, String title) {
  return Container(
    child: Column(
      children: [
        Container(
          height: 4,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
              scale: 0.5,
              image: AssetImage(
                  "assets/images/navbar-icon/" + image + "-active.png"),
            ),
          ),
        ),
        Container(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.bold,
                color: Color(0xFF242F9B)),
          ),
        ),
      ],
    ),
  );
}
