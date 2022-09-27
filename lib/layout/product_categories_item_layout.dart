import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductCategoriesItem extends StatelessWidget {
  String imagePath;
  String numberProduct;
  String title;

  ProductCategoriesItem(
      {super.key,
      required this.imagePath,
      required this.numberProduct,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Image.asset(imagePath, height: 50, width: 50),
        AutoSizeText(
          numberProduct,
          style: TextStyle(fontSize: 10),
        ),
        AutoSizeText(
          title,
          style: TextStyle(fontSize: 10),
        ),
      ],
    ));
  }
}
