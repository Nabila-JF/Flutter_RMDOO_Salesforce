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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF242F9B).withOpacity(0.15),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Card(
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: [
              Image.asset(imagePath, height: 110, width: 110),
              AutoSizeText(
                numberProduct,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  overflow: TextOverflow.clip,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF242F9B),
                ),
                maxLines: 2,
                minFontSize: 8,
                overflow: TextOverflow.ellipsis,
              ),
              AutoSizeText(
                "Furnitur",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  overflow: TextOverflow.clip,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF242F9B),
                ),
                maxLines: 2,
                minFontSize: 8,
                overflow: TextOverflow.ellipsis,
              ),
              AutoSizeText(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  overflow: TextOverflow.clip,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF242F9B),
                ),
                maxLines: 2,
                minFontSize: 8,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}