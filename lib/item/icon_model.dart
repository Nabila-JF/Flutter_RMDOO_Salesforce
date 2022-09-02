import 'package:flutter/material.dart';

class IconModel {
  String iconImagePath;
  String iconText;
  var route;

  IconModel({
    required this.iconImagePath,
    required this.iconText,
    this.route,
  });
}

