import 'package:flutter/material.dart';

Container navbarInactIcon(String image, String title) {
  // ignore: avoid_unnecessary_containers
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
                  // ignore: prefer_interpolation_to_compose_strings
                  "assets/images/navbar-icon/" + image + "-inactive.png"),
            ),
          ),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.bold,
              color: Color(0xFFAAAAAA)),
        ),
      ],
    ),
  );
}
